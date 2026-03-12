# Verilog AES-128 Encryption Core

This repository contains a simple educational implementation of an AES-128
encryption core written in Verilog.

The project demonstrates how AES encryption can be implemented in hardware
for FPGA or ASIC designs.

Features

- AES-128 encryption
- Hardware-friendly architecture
- Modular design
- Testbench included

Modules

aes_core.v      Top-level AES encryption module
sbox.v          SubBytes substitution box
key_expand.v    AES key expansion module
aes_tb.v        Simulation testbench

Simulation

Compile using a Verilog simulator such as Icarus Verilog:

iverilog aes_core.v sbox.v key_expand.v aes_tb.v -o aes_test

Run simulation:

vvp aes_test

Applications

AES hardware implementations are used in:

- secure processors
- embedded security modules
- hardware cryptographic accelerators
- secure communication systems

Author

Janani T
Embedded Systems & Cryptography Developer
