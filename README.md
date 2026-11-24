# 4-Bit Arithmetic Logic Unit (ALU)

## Project Overview
This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.

An ALU is a digital circuit that performs arithmetic and logical operations.

## Features
The ALU supports five operations:
- Addition
- Subtraction
- Bitwise AND
- Bitwise OR
- Bitwise XOR

## Tools Used
- Verilog HDL
- Icarus Verilog 12.0
- GTKWave 3.3.126
- Ubuntu on WSL

## Architecture
Inputs:
- A: 4-bit input
- B: 4-bit input
- opcode: 3-bit operation selector

Output:
- Y: 4-bit result

## Operation Codes

| Opcode | Operation |
|---|---|
| 000 | Addition |
| 001 | Subtraction |
| 010 | Bitwise AND |
| 011 | Bitwise OR |
| 100 | Bitwise XOR |

## Example
Inputs: A = 5 (0101), B = 3 (0011)

| Operation | Expected Output |
|---|---:|
| Addition | 8 |
| Subtraction | 2 |
| AND | 1 |
| OR | 7 |
| XOR | 6 |

## Simulation and Verification
- Compiled with Icarus Verilog.
- Ran 10 test cases.
- All 10 test cases produced the expected outputs.
- Generated the waveform file at `waveforms/alu.vcd`.
- Inspected the signals in GTKWave.

## How to Run

Compile:

```bash
iverilog -o alu_test alu.v alu_tb.v
vvp alu_test
gtkwave waveforms/alu.vcd

### Verify the README

Run:

```bash
cat README.md
cd /mnt/d/VLSI_ALU_Project

cat > progress_log.md <<'EOF'
# VLSI ALU Project — Progress Log

## Project Goal
Design and simulate a 4-bit Arithmetic Logic Unit using Verilog HDL.

## Completed Tasks

### 1. Environment Setup
- Installed Ubuntu using WSL.
- Installed Icarus Verilog.
- Installed GTKWave.

### 2. Verilog Fundamentals
- Created and simulated an AND gate.
- Learned about modules, ports, and testbenches.
- Viewed digital signals in GTKWave.

### 3. ALU Design
- Created alu.v.
- Implemented ADD, SUB, AND, OR, and XOR.
- Used a 3-bit opcode to select the operation.

### 4. Testbench Development
- Created alu_tb.v.
- Tested five operations with A = 5 and B = 3.
- Added five additional test cases.

### 5. Simulation and Verification
- Compiled successfully using Icarus Verilog.
- Ran 10 test cases.
- Confirmed all 10 outputs matched expected values.
- Generated waveforms/alu.vcd.
- Inspected the complete 0–100 ns waveform in GTKWave.

### 6. Documentation
- Created README.md.
- Created test_results.md.
- Updated the project progress log.

## Concepts Learned
- Verilog modules and ports
- Registers and wires
- Combinational logic using always @(*)
- Case statements and opcodes
- Testbenches and simulation
- Nanoseconds and picoseconds
- Waveform inspection
- 4-bit arithmetic overflow and wraparound

## Current Status
Basic ALU design and simulation completed.
All 10 test cases passed.

## Pending Improvements
- Add automated self-checking testbench assertions.
- Test more input combinations.
- Add carry and borrow outputs.
- Learn synthesis and timing analysis.
- Implement on FPGA hardware when available.

## Limitations
Simulation completed; FPGA implementation and physical hardware testing have not been performed.
