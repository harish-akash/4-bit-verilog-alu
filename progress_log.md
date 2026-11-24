# VLSI ALU Project — Progress Log

## Project Goal
Design and simulate a 4-bit Arithmetic Logic Unit using Verilog HDL.

## Completed Tasks

### Task 1: Environment Setup
- Installed Ubuntu using WSL.
- Installed Icarus Verilog.
- Installed GTKWave.

### Task 2: Verilog Practice
- Created and simulated an AND gate.
- Learned modules, ports, and testbenches.
- Viewed digital signals in GTKWave.

### Task 3: ALU Design
- Created alu.v.
- Implemented addition, subtraction, AND, OR, and XOR.
- Used a 3-bit opcode to select the operation.

### Task 4: Testbench
- Created alu_tb.v.
- Tested all five operations.
- Added five additional test cases.

### Task 5: Simulation and Verification
- Compiled the design using Icarus Verilog.
- Ran 10 test cases successfully.
- Confirmed all 10 outputs matched expected results.
- Generated waveforms/alu.vcd.
- Viewed the waveform in GTKWave over 0–100 ns.

### Task 6: Documentation
- Created README.md.
- Created test_results.md.
- Updated this progress log.

## Concepts Learned
- Verilog modules and ports
- Registers and wires
- Combinational logic using always @(*)
- Case statements and opcodes
- Testbenches and simulation
- Nanoseconds and picoseconds
- Waveform inspection
- 4-bit arithmetic wraparound

## Current Status
Basic ALU design and RTL simulation completed.
All 10 test cases passed.

## Pending Improvements
- Add automated self-checking testbench checks.
- Test more input combinations.
- Add carry and borrow outputs.
- Learn synthesis and timing analysis.
- Implement on FPGA hardware when available.

## Limitations
Simulation completed. FPGA implementation and physical hardware testing have not been performed.
