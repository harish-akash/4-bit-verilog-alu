# ALU Simulation Test Results

## Project
4-bit Arithmetic Logic Unit (ALU)

## Simulation Tools
- Icarus Verilog 12.0
- GTKWave 3.3.126

## Test Results

| No. | Operation | A | B | Opcode | Expected | Actual | Status |
|---:|---|---:|---:|---|---:|---:|---|
| 1 | Addition | 5 | 3 | 000 | 8 | 8 | PASS |
| 2 | Subtraction | 5 | 3 | 001 | 2 | 2 | PASS |
| 3 | AND | 5 | 3 | 010 | 1 | 1 | PASS |
| 4 | OR | 5 | 3 | 011 | 7 | 7 | PASS |
| 5 | XOR | 5 | 3 | 100 | 6 | 6 | PASS |
| 6 | Addition | 0 | 0 | 000 | 0 | 0 | PASS |
| 7 | Addition | 15 | 1 | 000 | 0 | 0 | PASS |
| 8 | Subtraction | 0 | 1 | 001 | 15 | 15 | PASS |
| 9 | AND | 15 | 15 | 010 | 15 | 15 | PASS |
| 10 | XOR | 10 | 5 | 100 | 15 | 15 | PASS |

## Important Note
The ALU has a 4-bit output. Therefore, 15 + 1 wraps around to 0.
The carry bit is not included in the output.

## Conclusion
All 10 test cases produced the expected results in simulation.

## Verification Status
RTL simulation completed using Icarus Verilog.
Waveform generated at waveforms/alu.vcd and viewed in GTKWave.
