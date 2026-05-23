# 4-bit ALU using Verilog

## Description
This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.  
The ALU performs arithmetic, logical, shift, rotate, and comparison operations based on select input `s`.

## Supported Operations

| Select Input | Operation |
|--------------|-----------|
| 0000 | Addition |
| 0001 | Subtraction |
| 0010 | Multiplication |
| 0011 | Division |
| 0100 | Left Shift |
| 0101 | Right Shift |
| 0110 | Rotate Left |
| 0111 | Rotate Right |
| 1000 | AND |
| 1001 | OR |
| 1010 | XOR |
| 1011 | NOR |
| 1100 | NAND |
| 1101 | XNOR |
| 1110 | Greater Than Comparison |
| 1111 | Equality Comparison |

## Flags
- Carry Flag -c0
- Zero Flag -z
- Negative Flag -n
- Overflow Flag -v

## Files
- `alu.v` → ALU Design
- `tb_alu.v` → Testbench
- `alu_waveform.png` → Simulation waveform

## Tools Used
- Verilog HDL
- Vivado Simulator

## Simulation
Behavioral simulation was successfully verified using Vivado waveform analysis.

## Author
Shailaja
