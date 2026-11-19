# Day 3 — TL-Verilog Digital Logic in Makerchip

## Objective
Practice combinational and sequential logic in the Makerchip IDE, inspect generated circuit diagrams, and verify waveforms before proceeding to a RISC-V CPU subset.

## Completed experiments

| Exercise | Source | Evidence screenshot |
|---|---|---|
| Logic gates: AND, OR, XOR, NOT | `01_logic_gates.tlv` | [Logic diagram](Screenshots/01_Logic_Gates_Diagram.png), [Waveform](Screenshots/02_Logic_Gates_Waveform.png) |
| AND gate visualization | `01_logic_gates.tlv` | [AND diagram](Screenshots/03_AND_Gate_Diagram.png) |
| Compilation log | Logic gates | [Simulation log](Screenshots/04_Makerchip_Simulation_Log.png) |
| 2-to-1 MUX | `02_mux_2to1.tlv` | [MUX waveform](Screenshots/05_Multiplexer_2to1_Waveform.png) |
| Sequential logic / register | `03_sequential_register.tlv` | [One-cycle delay](Screenshots/06_Sequential_Logic_Register.png) |
| Three-stage pipeline | `04_three_stage_pipeline.tlv` | [Pipeline waveform](Screenshots/07_Three_Stage_Pipeline.png) |
| Four-bit counter / feedback | `05_four_bit_counter.tlv` | [Counter waveform](Screenshots/08_Four_Bit_Counter.png) |
| Arithmetic (+ and −) | `06_adder_subtractor.tlv` | [Arithmetic result](Screenshots/09_Arithmetic_Addition_Subtraction.png) |
| Four-operation ALU | `07_simple_alu.tlv` | [Addition](Screenshots/10_ALU_Addition.png), [Subtraction](Screenshots/11_ALU_Subtraction.png), [AND](Screenshots/12_ALU_AND.png), [OR](Screenshots/13_ALU_OR.png) |

*The screenshot links will become active when the accompanying screenshots are uploaded.*

## ALU verification

Inputs are `a = 5` and `b = 3`, with a 2-bit operation select.

| op | Operation | Observed output |
|---|---|---|
| `00` | Addition | 8 |
| `01` | Subtraction | 2 |
| `10` | Bitwise AND | 1 |
| `11` | Bitwise OR | 7 |

All four expected values were observed in Makerchip waveforms.

## Learning outcomes
- Combinational operators and multiplexing
- Clocked state and the `>>1` pipeline delay operator
- Multi-stage pipelining
- Feedback logic for a 4-bit counter
- Control-based ALU operation selection
- Reading waveforms and simulation logs

## Notes
The provided screenshots are evidence of completed introductory exercises, not a completed RISC-V CPU. Some early logic-gate logs show unused-signal warnings, and one screenshot displays an early successful simulation build; these were retained as learning evidence.

## Resources
- [Makerchip IDE](https://myth.makerchip.com/ide/)
- [RISC-V MYTH Workshop](https://github.com/stevehoover/RISC-V_MYTH_Workshop)
