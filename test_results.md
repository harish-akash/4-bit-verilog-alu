# ALU Simulation Test Results

## Project
4-bit Arithmetic Logic Unit (ALU)

## Simulation Tools
- Icarus Verilog 12.0
- GTKWave 3.3.126

## Operations Tested

| Opcode | Operation |
|---|---|
| 000 | Addition |
| 001 | Subtraction |
| 010 | Bitwise AND |
| 011 | Bitwise OR |
| 100 | Bitwise XOR |

## Exhaustive Test Summary

| Metric | Result |
|---|---:|
| Input combinations per operation | 256 |
| Supported operations tested | 5 |
| Total test cases | 1280 |
| Passed | 1280 |
| Failed | 0 |

All 16 possible values of A and all 16 possible values of B were tested for each supported operation.

## Important Notes
- The ALU has a 4-bit output.
- Addition and subtraction results are limited to 4 bits.
- Therefore, 15 + 1 produces 0 because the carry bit is not included in the output.
- Subtracting 1 from 0 produces 15 in the 4-bit output.

## Conclusion
All 1280 test cases passed in RTL simulation using Icarus Verilog.

Waveform generated at `waveforms/alu.vcd` and viewed in GTKWave.

## Verification Limitations
This verifies the simulated RTL for the tested input combinations. FPGA implementation, hardware testing, synthesis, and timing analysis have not been performed.
