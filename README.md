# Haakon Disassembler Project
## Overview
This project is an x86_64 disassembler written entirely in assembly language. The primary goal of this project is to deepen my understanding of assembly language and its applications in cybersecurity. By working directly with x86_64 architecture and instruction sets, this project will serve as both a learning tool and a practical exercise in reverse engineering.

Goals
* Learn x86_64 Assembly: Gain hands-on experience with x86_64 assembly language by writing a complete disassembler.
* Explore Cybersecurity: Understand how disassemblers work as part of the reverse engineering process, a critical skill in cybersecurity.
* Low-Level Programming: Improve low-level programming skills by working directly with machine code and assembly.
Features
* x86_64 Instruction Support: The disassembler will support various x86_64 instruction formats.
* Binary Parsing: Capable of reading x86_64 binary files and translating them into human-readable assembly code.
Output Formatting: Provides clear and formatted disassembled output for easy analysis.


### Getting Started
Prerequisites
Assembler and Linker: You'll need an x86_64 assembler (such as `as`) and linker to assemble and link the disassembler code.
x86_64 Emulator or Hardware: To run and test the disassembler, you'll need x86_64 hardware

### Building the Project
Clone the repository:

```sh
git clone https://github.com/ojo5/haakon.git
cd haakon-disassembler
```

### Assemble the code:

```sh
as -o fileName.o fileName.s
ld -o fileName fileName.o
```

## Resources
x86_64 Architecture Reference Manual: Link
x86_64 Assembly Language Programming: Link
GNU Assembler Documentation: Link


## Contributing
If you're interested in contributing to this project, feel free to submit pull requests or open issues. Suggestions for improving the disassembler or expanding its functionality are welcome!

## License
This project is licensed under the BSD License. See the LICENSE file for details.

## Contact
If you have any questions or want to discuss the project, feel free to reach out:
