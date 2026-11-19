# RISC-V MYTH Workshop — Days 1–3

Practical learning repository documenting RISC-V ISA experiments, PicoRV32 simulation, and digital logic in TL-Verilog. Based on the **RISC-V Based MYTH (Microprocessor for You in Thirty Hours)** workshop.

## Day 1 — RISC-V ISA and GNU Toolchain
- C programs for summation and unsigned integer limits.
- Cross-compilation and execution with RISC-V QEMU.
- Inspection of optimized assembly using `objdump`.
- Spike and Proxy Kernel debugger exploration.

Day 1 locally developed files and outputs will be uploaded from Ubuntu.

## Day 2 — PicoRV32 simulation
- RISC-V `rv32im` firmware generation.
- Custom assembly summation function, Verilog processor core, and testbench.
- Conversion to `firmware.hex` and `firmware32.hex`.
- Simulation with Icarus Verilog.
- Verified outputs: `Sum of number from 1 to 2 is 3` and `Sum of number from 1 to 3 is 6`.

Day 2 used a custom freestanding firmware and startup file to accommodate the available toolchain, so its build differs from the instructor's original `rv32im.sh` script. Original PicoRV32 and instructor workshop sources should retain their respective upstream notices if included.

## Day 3 — TL-Verilog in Makerchip
The `Day3_TL_Verilog/` directory contains examples completed in the Makerchip IDE:
- Logic gates (AND, OR, XOR, NOT)
- 2:1 multiplexer
- Sequential one-cycle delay
- Three-stage pipeline
- 4-bit counter with feedback
- 4-bit adder/subtractor
- Simple 4-operation ALU (addition, subtraction, AND, OR)

These are introductory design exercises, not a completed RISC-V CPU.

## Tools
RISC-V GNU toolchain, QEMU, Spike, Verilog/Icarus Verilog, and [Makerchip](https://myth.makerchip.com/).

## References
- [Official MYTH workshop repository](https://github.com/stevehoover/RISC-V_MYTH_Workshop)
- [Day 2 workshop collateral](https://github.com/kunalg123/riscv_workshop_collaterals)
- [Makerchip](https://myth.makerchip.com/)

## Status
Day 3 example sources are included. Day 1 and Day 2 local source files need to be pushed from the Ubuntu machine. Generated binaries and temporary simulation artifacts are excluded.
