#!/usr/bin/env python3
"""
Extract the embedded ELF from the IREE bytecode module C array.

This script parses the C array file and extracts the ELF binary that's embedded
within the flatbuffer. The extracted ELF can then be used for symbol decoding
in trace decoders.

Usage:
    python3 extract_elf_from_c_array.py <c_file> [output_file]
"""

import re
import sys
import os

def extract_elf_from_c_array(c_file, output_file=None):
    """Extract ELF from C array file."""
    if not os.path.exists(c_file):
        print(f"Error: File not found: {c_file}")
        return None
    
    with open(c_file, 'r') as f:
        content = f.read()
    
    # Find the file_0 array content
    match = re.search(r'static uint8_t const file_0\[\] = \{(.*?)\};', content, re.DOTALL)
    if not match:
        print("Error: Could not find file_0 array in C file")
        return None
    
    array_content = match.group(1)
    
    # Parse the array: extract all numbers
    numbers = []
    for line in array_content.split('\n'):
        line = line.strip()
        if not line or line.startswith('//'):
            continue
        line = line.rstrip(',')
        for item in line.split(','):
            item = item.strip()
            if item:
                try:
                    numbers.append(int(item))
                except ValueError:
                    pass
    
    # Convert to bytes
    data = bytes(numbers)
    
    # Find ELF magic bytes (0x7F 'E' 'L' 'F')
    elf_magic = b'\x7fELF'
    elf_offset = data.find(elf_magic)
    if elf_offset == -1:
        print("Error: Could not find ELF magic bytes in the data")
        return None
    
    print(f"Found ELF at offset {elf_offset} (0x{elf_offset:x}) in flatbuffer")
    
    # Extract ELF (from magic bytes to end of array)
    elf_data = data[elf_offset:]
    
    # Determine output filename
    if output_file is None:
        output_file = os.path.splitext(c_file)[0] + '_extracted.elf'
    
    # Write to file
    with open(output_file, 'wb') as f:
        f.write(elf_data)
    
    print(f"Extracted {len(elf_data)} bytes to {output_file}")
    print(f"ELF magic: {elf_data[:4]}")
    
    return output_file

def print_elf_info(elf_file):
    """Print information about the extracted ELF."""
    import subprocess
    
    print("\n" + "="*70)
    print("Extracted ELF Information:")
    print("="*70)
    
    # Read ELF header
    try:
        result = subprocess.run(['readelf', '-h', elf_file], 
                              capture_output=True, text=True, check=True)
        print(result.stdout)
    except (subprocess.CalledProcessError, FileNotFoundError):
        print("Warning: readelf not available, skipping ELF header info")
    
    # Read sections
    try:
        result = subprocess.run(['readelf', '-S', elf_file], 
                              capture_output=True, text=True, check=True)
        print("\nSections:")
        print(result.stdout[:2000])  # Limit output
    except (subprocess.CalledProcessError, FileNotFoundError):
        pass
    
    # Read symbols
    try:
        result = subprocess.run(['readelf', '-s', elf_file], 
                              capture_output=True, text=True, check=True)
        print("\nSymbols:")
        print(result.stdout)
    except (subprocess.CalledProcessError, FileNotFoundError):
        pass
    
    # Read program headers
    try:
        result = subprocess.run(['readelf', '-l', elf_file], 
                              capture_output=True, text=True, check=True)
        print("\nProgram Headers (Load Segments):")
        print(result.stdout)
    except (subprocess.CalledProcessError, FileNotFoundError):
        pass
    
    print("\n" + "="*70)
    print("For trace decoder:")
    print("  - Use this extracted ELF file for symbol decoding")
    print("  - Base address = __iree_elf_buffer_start (from linker script)")
    print("  - Function addresses = base_address + ELF_offset + function_offset")
    print("="*70)

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python3 extract_elf_from_c_array.py <c_file> [output_file]")
        sys.exit(1)
    
    c_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else None
    
    elf_file = extract_elf_from_c_array(c_file, output_file)
    if elf_file:
        print_elf_info(elf_file)



