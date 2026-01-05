import re
import sys
import binascii

def main():
    if len(sys.argv) < 3:
        print("Usage: python extract_composite_weights.py <input.mlir> <output.bin>")
        return

    input_path = sys.argv[1]
    output_path = sys.argv[2]

    print(f"Reading {input_path}...")
    with open(input_path, 'r') as f:
        content = f.read()

    # 1. Find the start of the composite block
    # Looks like: #util.composite<1246080xi8, [
    composite_match = re.search(r'#util\.composite<(\d+)xi8,\s*\[', content)
    if not composite_match:
        print("❌ Error: Could not find '#util.composite' block.")
        return

    total_expected_size = int(composite_match.group(1))
    print(f"Found composite block. Expected total size: {total_expected_size} bytes.")

    # 2. Extract the content INSIDE the brackets [ ... ]
    # We find the opening bracket of the composite and look for the matching closing bracket
    start_index = composite_match.end()
    
    # Simple parser to find the end of the list
    bracket_depth = 1
    end_index = start_index
    for i, char in enumerate(content[start_index:]):
        if char == '[': bracket_depth += 1
        elif char == ']': bracket_depth -= 1
        
        if bracket_depth == 0:
            end_index = start_index + i
            break
            
    composite_body = content[start_index:end_index]

    # 3. Find all dense hex strings IN ORDER inside the body
    # They look like: dense<"0x1234...">
    # Note: We use a non-greedy match to handle multiple entries
    matches = re.findall(r'dense<"0x([0-9a-fA-F]+)">', composite_body)
    
    if not matches:
        print("❌ Error: No hex strings found inside composite block.")
        return

    print(f"Found {len(matches)} segments. Stitching...")

    # 4. Concatenate and Write
    total_bytes_written = 0
    with open(output_path, 'wb') as f:
        for hex_str in matches:
            binary_data = binascii.unhexlify(hex_str)
            f.write(binary_data)
            total_bytes_written += len(binary_data)

    print(f"✅ Written: {total_bytes_written} bytes to {output_path}")
    
    if total_bytes_written == total_expected_size:
        print("SUCCESS: Output size matches MLIR definition.")
    else:
        print(f"WARNING: Size mismatch! Expected {total_expected_size}, got {total_bytes_written}.")
        print("This might be due to implicit zero-padding or sparse elements not handled by this script.")

if __name__ == "__main__":
    main()