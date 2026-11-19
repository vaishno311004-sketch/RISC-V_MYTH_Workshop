# Day 1 — RISC-V ISA and GNU Compiler Toolchain

## Objective
Compile and execute C programs using native GCC and the RISC-V cross-compiler, inspect RISC-V disassembly, and practice hexadecimal address calculations.

## Recorded experiments
1. **Unsigned integer maximum:** The corrected `unsignedHighest.c` used `ULLONG_MAX` and printed `18446744073709551615` (maximum 64-bit unsigned value).
2. **Compiler and QEMU run:** A later variant printed `1023` when executed both natively and with `riscv64-linux-gnu-gcc` plus `qemu-riscv64`. This is a separate 10-bit exercise, not the 64-bit maximum.
3. **Assembly summation:** `1to9_custom.c` with `load.s` showed `Sum of number from 1 to 9 is 45` under RISC-V QEMU.
4. **Disassembly:** `riscv64-linux-gnu-objdump` revealed RISC-V instructions for `main`, including stack operations and calls.
5. **Address arithmetic:** Ubuntu Programmer Calculator was used to convert decimal and hexadecimal addresses and to compute an instruction-range difference.

## Evidence screenshots
Screenshots are numbered by topic rather than their original capture order. The files will be placed inside `Screenshots/`:

| Screenshot | Contents |
|---|---|
| `01_Unsigned_64bit_Maximum.png` | GCC compilation, correction of an accidental Vim command, and correct maximum unsigned 64-bit output |
| `02_Native_and_QEMU_1023.png` | Native and RISC-V QEMU output of 1023 |
| `03_RISCV_Summation_1_to_9.png` | RISC-V cross-compilation and sum 1 through 9 = 45 |
| `04_RISCV_Disassembly_and_Editor_Cleanup.png` | `objdump` disassembly and Vim swap-file cleanup |
| `05_Calculator_Decimal_65984.png` | Programmer Calculator displaying 65984 (hex 101C0) |
| `06_Calculator_Expression_10_minus_0.png` | Screenshot of an example calculator expression; displayed value should not be interpreted as decimal 10 |
| `07_Calculator_Hex_Address_Difference.png` | Hexadecimal subtraction `101C0 - 10184 = 3C` |

## Observations
- The compiler error visible in an early screenshot was resolved by removing accidentally inserted Vim `:wq` text.
- The screenshot showing `1023` belongs to a changed program, not the `ULLONG_MAX` run.
- The screenshots provide evidence of commands and results; installation and Spike debugging were also practiced but are not all represented in this screenshot batch.

## Tools
Ubuntu, GCC, `riscv64-linux-gnu-gcc`, `qemu-riscv64`, `objdump`, and Ubuntu Programmer Calculator.

## Reference
[RISC-V MYTH Workshop](https://github.com/stevehoover/RISC-V_MYTH_Workshop)
