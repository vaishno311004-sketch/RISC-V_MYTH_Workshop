# Day 5 — RISC-V Load/Store and Pipeline Verification

## Final Makerchip project

**[Open the final Day 5 RISC-V CPU project](https://myth.makerchip.com/v228/ide/~0n5fqcvJ/p-0KXc2j)**

This is the final project link supplied for the Day 5 Makerchip implementation.

## Objective

Extend the pipelined TL-Verilog RISC-V CPU with data-memory operations and verify the LOAD instruction result and write-back selection.

## Implementation

- Decode the RV32I Store Word (`SW`) and Load Word (`LW`) instructions.
- Calculate effective memory addresses from the register operand and immediate.
- Connect data memory through `m4+dmem(@4)`.
- Carry LOAD data, the destination register, and the LOAD-valid signal into stage `@5`.
- Select LOAD data or the aligned ALU result for the write-back selection test.
- Retain the register file interface `m4+rf(@1, @2)`.

## Observed results

| Check | Observed value |
| --- | --- |
| Loaded data | `0x0000002D` (45 decimal) |
| LOAD destination | `x15` (`0x0F`) |
| LOAD valid and result check | Asserted |
| Write-back selection test | `Simulation PASSED!!!` |

**Scope:** This test verifies the LOAD memory path and write-back *selection*; an actual write into register `x15` has not been verified.

## Screenshots and source

The final CPU diagram, simulation LOG, waveform verification, and write-back logic screenshots were captured during the workshop, but are **not yet uploaded to this repository**. Add their original image files to a `Screenshots/` folder and the saved TL-Verilog source to this folder when ready.

## Tools

Makerchip, TL-Verilog, SandPiper, Verilator, and the RISC-V MYTH workshop support macros.

[Return to repository overview](../README.md)
