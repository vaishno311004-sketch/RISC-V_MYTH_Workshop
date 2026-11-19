# Day 2 — PicoRV32 Core and Simulation

## Objective
Run a small RISC-V program on a PicoRV32 processor model using the RV32IM toolchain, firmware memory images, an Icarus Verilog testbench and the VVP simulator.

## Experiments documented by screenshots

| File (in `Screenshots/`) | Evidence |
|---|---|
| `01_PicoRV32_Core_Source.png` | Header and configuration portion of the PicoRV32 processor source (`picorv32.v`) |
| `02_PicoRV32_Verilog_Testbench.png` | `testbench.v`: clock, reset, processor instance and firmware memory setup |
| `03_Firmware_HEX_Byte_View.png` | Byte-format firmware memory contents (`firmware.hex`) |
| `04_Firmware_HEX_32bit_View.png` | 32-bit firmware memory contents (`firmware32.hex`) |
| `05_Simulation_1_to_2.png` | Simulation displays `Sum of number from 1 to 2 is 3`, then `TRAP` |
| `06_Simulation_1_to_3.png` | Simulation displays `Sum of number from 1 to 3 is 6`, then `TRAP` |
| `07_Simulation_Debugging_and_Rerun.png` | Intermediate run shows an incomplete message followed by `TRAP`; later run displays the valid sum for 1 to 2 |

The two additional screenshots of the `1 to 9 = 45` assembly experiment and `load.s` source were captured in the `riscv_day1` directory, so they are organized under Day 1 rather than duplicated as Day 2 results.

## Workflow
1. Inspect `picorv32.v` and `testbench.v`.
2. Build the RV32IM firmware using the cross compiler, a startup file and linker script.
3. Convert the firmware ELF to `firmware.hex`, then to `firmware32.hex`.
4. Build the Verilog testbench with `iverilog -o testbench.vvp testbench.v picorv32.v`.
5. Simulate with `vvp -N testbench.vvp`, inspect output and debug issues.

## Observations
- Observed correct sums: **1 + 2 = 3** and **1 + 2 + 3 = 6**.
- `TRAP` appears after program execution in these screenshots; it is a processor trap indication and should not by itself be described as a universal pass flag.
- One earlier run printed `Sum of number from 1 to TRAP`, which was not a correct completed result. Later runs displayed complete results.

## Toolchain notes
The original workshop's PicoRV32 files came from [riscv_workshop_collaterals](https://github.com/kunalg123/riscv_workshop_collaterals). Due to differences in the installed toolchain and standard C library, an alternative freestanding firmware build was used for a working local experiment. Original upstream author/license notices should be retained with any vendored third-party sources.

## Source files
The screenshots are evidence, not substitutes for source code. Source files such as `firmware_day2.c`, `boot_day2.S`, `load.S`, `testbench.v`, `picorv32.v`, `riscv.ld`, and `hex8tohex32.py` should be copied from the user's Ubuntu environment into this folder in a separate commit.
