# RISC-V MYTH Workshop — Three-Day Practical Report

**RISC-V ISA • PicoRV32 • TL-Verilog / Makerchip**

This repository documents three days of hands-on work with the RISC-V toolchain, processor simulation, and introductory digital hardware design. It includes **source code, original terminal/IDE screenshots, detailed explanations of each screenshot, observed results, and lessons learned**.

## Open the illustrated day-by-day reports

| Day | Practical report | Evidence | Key achievements |
|---|---|---:|---|
| **Day 1** | **[RISC-V ISA and cross-compilation](Day1_RISCV_ISA/README.md)** | 11 screenshots | GCC and RISC-V QEMU execution, C/assembly summation, machine-code disassembly, hex address calculations |
| **Day 2** | **[PicoRV32 processor simulation](Day2_PicoRV32/README.md)** | 6 screenshots | RV32IM firmware generation, Verilog testbench, memory image conversion, sums of 3 and 6 verified with VVP |
| **Day 3** | **[TL-Verilog and Makerchip](Day3_TL_Verilog/README.md)** | 13 screenshots | Logic gates, MUX, register, pipeline, counter, arithmetic and four-operation ALU |

**Total: 30 screenshots**, each embedded and interpreted individually in the corresponding report. To explore the work, click a **Day** report above rather than opening screenshots without context.

## Selected recorded outputs

### Day 1: Native and emulated RISC-V

```text
Highest number represented by unsigned long long int is 18446744073709551615
Highest number represented by unsigned long long int is 1023
Sum of number from 1 to 9 is 45
```

The first two outputs are from **different versions** of the unsigned-integer exercise: the earlier program used `ULLONG_MAX` while the current checked-in C file computes `(1ULL << 10) - 1` (1023). See the Day 1 report for details.

### Day 2: PicoRV32 simulation

```text
Sum of number from 1 to 2 is 3
TRAP

Sum of number from 1 to 3 is 6
TRAP
```

The arithmetic output was verified; `TRAP` signals a processor trap/termination event in this simulation and is not by itself proof of functional correctness.

### Day 3: ALU verification

| Operation select | Function | A | B | Result |
|---|---|---:|---:|---:|
| `00` | ADD | 5 | 3 | 8 |
| `01` | SUB | 5 | 3 | 2 |
| `10` | AND | 5 | 3 | 1 |
| `11` | OR | 5 | 3 | 7 |

## Technologies and tools

- **Ubuntu, GCC, RISC-V GNU cross-toolchains** — writing and building C/assembly programs
- **QEMU** — executing RISC-V Linux binaries on an Ubuntu host
- **`objdump`** — inspecting machine instructions and function addresses
- **PicoRV32, Verilog, Icarus Verilog/VVP** — running firmware on a simulated RISC-V processor
- **Makerchip and TL-Verilog** — inspecting RTL logic, connectivity and waveforms

## How to use this repository

Each day's folder contains:
1. A **README** explaining the objective and screenshot-by-screenshot experiments.
2. A `Screenshots/` folder with original evidence and meaningful filenames.
3. The relevant source files used or adapted for the exercises.

The screenshots are records of workshop iterations, so some show error messages, debugging, or settings that differ from the **final checked-in source versions**. Each daily report explicitly distinguishes these.

## Scope and attribution

This repository is a practical learning record, **not a completed RISC-V processor design**. PicoRV32 and upstream workshop collateral are third-party materials and should retain their original license notices.

References:
- [RISC-V MYTH workshop](https://github.com/stevehoover/RISC-V_MYTH_Workshop)
- [Workshop collateral](https://github.com/kunalg123/riscv_workshop_collaterals)
- [PicoRV32](https://github.com/YosysHQ/picorv32)
- [Makerchip](https://myth.makerchip.com/ide/)

---

**Start reading:** [Day 1 →](Day1_RISCV_ISA/README.md) · [Day 2 →](Day2_PicoRV32/README.md) · [Day 3 →](Day3_TL_Verilog/README.md)
