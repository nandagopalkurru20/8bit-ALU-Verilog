# 8-Bit ALU using Verilog HDL

An 8-Bit Arithmetic Logic Unit (ALU) designed using Verilog HDL and simulated in Vivado.  
This ALU performs arithmetic, logical, and shift operations based on the select input signals.

---

# Project Overview

The ALU is one of the core components of a processor responsible for performing arithmetic and logical operations.  
This project demonstrates the implementation of an 8-bit ALU using combinational logic in Verilog HDL.

The design supports multiple operations such as:
- Addition
- Subtraction
- Logical Operations
- Shift Operations
- Increment/Decrement

The project was simulated and verified using Xilinx Vivado.

---

# Features

## Arithmetic Operations
- Addition
- Subtraction
- Increment
- Decrement

## Logical Operations
- AND
- OR
- XOR
- NAND
- NOR
- XNOR

## Shift Operations
- Left Shift
- Right Shift

## Status Flags
- Carry/Borrow Flag
- Zero Flag
- Overflow Flag

---

# ALU Operations Table

| Select Input (S) | Operation |
|------------------|-----------|
| 0000 | Addition |
| 0001 | Subtraction |
| 0010 | AND |
| 0011 | OR |
| 0100 | XOR |
| 0101 | NAND |
| 0110 | NOR |
| 0111 | XNOR |
| 1000 | Shift Left |
| 1001 | Shift Right |
| 1010 | Increment |
| 1011 | Decrement |

---

# Block Diagram

<img width="100%" alt="8bit ALU Block Diagram" src="docs/Block_Diagram.png">

---

# Project Structure

```text
8bit-ALU-Verilog/
│
├── src/
│   └── ALU_8bit.v
│
├── tb/
│   └── ALU_8bit_tb.v
│
├── sim/
│   ├── waveform.png
│   └── simulation_output.png
│
├── docs/
│   ├── Block_Diagram.png
│   ├── RTL_Schematic.png
│   └── Project_Report.pdf
│
├── README.md
├── LICENSE
└── .gitignore
```

---

# Inputs and Outputs

## Inputs

| Signal | Size | Description |
|--------|------|-------------|
| A | 8-bit | First input operand |
| B | 8-bit | Second input operand |
| S | 4-bit | Operation select input |

---

## Outputs

| Signal | Size | Description |
|--------|------|-------------|
| Result | 8-bit | ALU operation result |
| Carry_Borrow | 1-bit | Carry/Borrow flag |
| Zero | 1-bit | Zero flag |
| Overflow | 1-bit | Overflow flag |

---

# Tools Used

- Verilog HDL
- Xilinx Vivado

---

# Simulation and Verification

The ALU functionality was verified using a Verilog testbench in Vivado Simulator.

The following were verified:
- Arithmetic operations
- Logical operations
- Shift operations
- Carry generation
- Overflow detection
- Zero flag functionality

---

# Sample Results

## Addition

```text
A = 15
B = 10
Result = 25
```

## Subtraction

```text
A = 20
B = 20
Result = 0
Zero Flag = 1
```

## Shift Left

```text
A = 00001111
Result = 00011110
```

---

# How to Run the Project

## Step 1
Open Vivado and create a new RTL project.

## Step 2
Add the following files:
- `ALU_8bit.v`
- `ALU_8bit_tb.v`

## Step 3
Run:
- Behavioral Simulation
- Synthesis
- RTL Analysis

## Step 4
Verify waveforms and RTL schematic.

---

# RTL Design Concepts Used

- Combinational Logic Design
- Case Statements
- Bitwise Operations
- Shift Operations
- Flag Generation Logic
- RTL Simulation
- Hardware Verification
  
---

# Future Enhancements

- 16-bit ALU
- Pipelined ALU
- Multiplier and Divider Unit
- Signed Arithmetic Support
- FPGA Board Implementation

---

# Learning Outcomes

Through this project, the following skills were developed:

- Verilog HDL Coding
- RTL Design
- FPGA Design Flow
- Testbench Development
- Waveform Analysis
- Vivado Simulation and Synthesis

---

# Author
## Nandagopal Kurru
