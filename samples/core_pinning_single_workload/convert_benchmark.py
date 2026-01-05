import os
import re
import argparse

def patch_content(content, filename):
    """
    Applies strict patching to make the HAL executable compatible with high-level wrapping.
    """
    
    # 1. Inject %c0_clean at the start of the function
    # matches: func.func @name(...) {
    func_header_regex = re.compile(r'(func\.func\s+@[\w$]+\s*\(.*?\)\s*(?:attributes\s*\{.*?\})?\s*\{)')
    match = func_header_regex.search(content)
    if not match:
        print(f"[{filename}] SKIPPING: Could not find function body.")
        return content
    
    # Injection
    injection = f"\n        %c0_clean = arith.constant 0 : index"
    content = content[:match.end()] + injection + content[match.end():]

    # 2. Fix Offsets: Force all binding offsets to %c0_clean
    # matches: offset(%anything) inside a hal.interface.binding line
    # We do this carefully to only affect binding lines
    def replace_offset(m):
        line = m.group(0)
        if "hal.interface.binding.subspan" in line:
            return re.sub(r'offset\(%[\w$]+\)', 'offset(%c0_clean)', line)
        return line

    # Apply offset fix line by line to be safe
    lines = content.split('\n')
    lines = [replace_offset(re.match(r'.*', l)) for l in lines] # dummy match to wrap string
    content = '\n'.join(lines)

    # 3. Fix Types: writeonly -> readwrite
    # This enables Destination Passing Style (passing output as argument)
    if "dispatch.tensor<writeonly" in content:
        print(f"[{filename}] Patching 'writeonly' -> 'readwrite'")
        content = content.replace("dispatch.tensor<writeonly", "dispatch.tensor<readwrite")

    # 4. Fix Returns: return -> func.return
    # The internal executable might use 'return', but we need 'func.return' to be safe
    # We look for 'return' at the start of a line (ignoring indentation)
    # We explicitly avoid matching 'func.return' if it's already there
    content = re.sub(r'(^\s*)return(\s+|$)', r'\1func.return\2', content, flags=re.MULTILINE)

    return content

def parse_bindings(mlir_content):
    # We scan for readwrite/readonly. writeonly should be gone by now.
    regex = re.compile(r'binding\((\d+)\).*?:.*?dispatch\.tensor<(readonly|readwrite|writeonly|read|write):(tensor<[^>]+>)>')
    bindings = []
    for match in regex.finditer(mlir_content):
        index = int(match.group(1))
        access = match.group(2)
        # Normalize
        if access == "read": access = "readonly"
        if access == "write": access = "writeonly" # Should rarely happen after patch
        bindings.append({'index': index, 'access': access, 'type': match.group(3)})
    bindings.sort(key=lambda x: x['index'])
    return bindings

def get_names(mlir_content):
    exec_match = re.search(r'hal\.executable (?:private|public) @([\w$]+)', mlir_content)
    var_match = re.search(r'hal\.executable\.variant (?:private|public) @([\w$]+)', mlir_content)
    export_match = re.search(r'hal\.executable\.export (?:private|public) @([\w$]+)', mlir_content)
    
    return (
        exec_match.group(1) if exec_match else "unknown",
        var_match.group(1) if var_match else "system_elf_x86_64",
        export_match.group(1) if export_match else "entry_point"
    )

def generate_wrapper(filename, content):
    # Step A: Patch the internal HAL code
    patched_content = patch_content(content, filename)
    
    # Step B: Analyze bindings to generate the wrapper
    bindings = parse_bindings(patched_content)
    if not bindings: 
        print(f"[{filename}] WARNING: No bindings found.")
        return patched_content

    exec_name, var_name, export_name = get_names(patched_content)

    func_args = []
    dispatch_operands = []
    dispatch_types = []
    return_types = []
    return_vals = []
    
    arg_idx = 0
    
    # Step C: Build Destination Passing Style Signature
    for b in bindings:
        arg_name = f"%arg{arg_idx}"
        b_type = b['type']
        
        # 1. Signature: All buffers are arguments
        func_args.append(f"{arg_name}: {b_type}")
        
        # 2. Dispatch Operands
        dispatch_operands.append(arg_name)
        dispatch_types.append(b_type)
        
        # 3. Returns: Any ReadWrite buffer is returned
        if b['access'] in ['readwrite', 'writeonly']:
            return_types.append(b_type)
            return_vals.append(f"%results#{len(return_vals)}")
            
        arg_idx += 1

    # Step D: Emit Wrapper
    wrapper_template = f"""
// ---------------------------------------------------------
// WRAPPED DISPATCH V7 (DPS + Returns Fixed): {exec_name}
// ---------------------------------------------------------

{patched_content}

module {{
  func.func @run_dispatch({', '.join(func_args)}) -> ({', '.join(return_types)}) {{
    
    // Call HAL Executable (Destination Passing Style)
    %results:{len(return_types)} = flow.dispatch @{exec_name}::@{var_name}::@{export_name}({', '.join(dispatch_operands)}) 
      : ({', '.join(dispatch_types)}) 
      -> ({', '.join(return_types)})

    func.return {', '.join(return_vals)} : {', '.join(return_types)}
  }}
}}
"""
    return wrapper_template

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--input_dir", required=True)
    parser.add_argument("--output_dir", required=True)
    args = parser.parse_args()
    
    if not os.path.exists(args.output_dir): os.makedirs(args.output_dir)

    count = 0
    for filename in sorted(os.listdir(args.input_dir)):
        if not filename.endswith(".mlir"): continue
        
        in_path = os.path.join(args.input_dir, filename)
        with open(in_path, 'r') as f:
            content = f.read()
            
        try:
            wrapped = generate_wrapper(filename, content)
            out_path = os.path.join(args.output_dir, filename)
            with open(out_path, 'w') as f:
                f.write(wrapped)
            count += 1
        except Exception as e:
            print(f"Error processing {filename}: {e}")

    print(f"Successfully processed {count} files.")

if __name__ == "__main__":
    main()