
---

# 🧠 Nano Processor

A simple 8-bit nano processor designed from scratch using digital logic principles. This project showcases a basic CPU architecture, built using HDL (Hardware Description Language), and is capable of executing custom instructions with simulated memory and ALU operations.

<img src="https://github.com/user-attachments/assets/6f0c5bde-bd97-45aa-9b51-c1459cd1dddf" alt="basys3" width="500"/>

<img src="https://github.com/user-attachments/assets/e2d9f827-8d7a-427f-9484-b24ff2225798" alt="basys3" width="500"/>


---

## 🎓 Nano Processor Project – CS1050: Computer Organization & Digital Design

Excited to share the final project for our CS1050 module, where our team successfully designed, implemented, and tested a Nano Processor using FPGA hardware and Xilinx Vivado. 🖥️🔧

Working in a team of four, we developed both a Basic Version and an Extended Version, applying key concepts from our coursework in digital logic, processor design, and system integration.

---

## 📌 Overview

This project demonstrates the fundamentals of processor design, including:
- Instruction Fetch & Decode
- ALU Execution
- Register File Operations
- Program Counter Handling
- Basic Control Flow

Designed as an educational experiment to understand how low-level processors work internally, this nano processor supports a small set of instructions and runs simple programs in simulation.

---

## 🛠️ Technologies Used

- **Language**: Verilog / VHDL (update if needed)
- **Simulation Tool**: ModelSim / Vivado / GHDL
- **Design Scope**: Behavioral simulation (no physical FPGA target)
- **FPGA Implementation**: Xilinx Boards
- **Design Suite**: Xilinx Vivado for synthesis, simulation & deployment
- **Digital Logic Components**: Designed entirely from scratch

---

## 🧩 Features

- 8-bit data width
- Custom Instruction Set (see below)
- Arithmetic and Logical operations
- Conditional and Unconditional Jumps
- Simulated RAM and ROM
- Modular design: ALU, Registers, Control Unit, Memory

---

## 📍 Basic Version Features

- ✅ 4-bit Add/Subtract Unit & 3-bit Adder
- ✅ 3-bit Program Counter
- ✅ 8-way 2-bit, 2-way 3-bit, and 2-way 4-bit Multiplexers
- ✅ Register Bank, Program ROM, Instruction Decoder
- ✅ Unsigned output on 7-segment display

## 📍 Extended Version Features

- ✅ All major components upgraded to 8-bit versions
- ✅ Added a Multiplier Unit for advanced arithmetic
- ✅ Integrated three 7-segment displays (with minus sign support using 2’s complement)
- ✅ Enhanced Program ROM to support up to 16 instructions
- ✅ Improved functionality and output visualization

---

## 💡 Experience

This hands-on project was an amazing experience that bridged theory and practice. It strengthened our understanding of computer architecture and gave us real-world skills in hardware-level programming and design.

---


## 👥 Team

Massive thanks to my incredible teammates Abdul Rafi, Nipun Sangeeth,Damindu Jayasinghe and Sonath Kirindage  for the collaboration and commitment throughout this journey! 🙌

---

## 📁 Project Structure

```
nanoprocessor/
├── 1. Simulation Ready Project files
│   ├── Basic Version
│   │   └── Nanoprocessor.rar
│   └── Extended Version
│       └── Improved Nano-processor.rar
├── 2. Genarated Bitstream
│   ├── Basic version
│   └── Extended version
├── .gitignore
├── 3. Instructions .txt
├── Nano Processor Presentation.pdf
├── Nano Processor Report Group 20.pdf
└── readme.md
```

---

## 🚀 How to Run

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/nano-processor.git
   cd nano-processor
   ```

2. **Open your HDL simulator** (e.g., ModelSim, Vivado, GHDL).

3. **Compile the source files** from the `src/` directory.

4. **Compile and run the testbench** in `testbench/`.

5. **View waveform and simulation outputs** to verify processor behavior.

---

## 💡 Sample Instruction Set Architecture (ISA)

| Opcode | Mnemonic | Description |
|--------|----------|-------------|
| 0001   | LOAD     | Load data from memory |
| 0010   | STORE    | Store data to memory |
| 0011   | ADD      | Add register values |
| 0100   | SUB      | Subtract register values |
| 0101   | AND      | Bitwise AND |
| 0110   | OR       | Bitwise OR |
| 0111   | JMP      | Unconditional jump |
| 1000   | JZ       | Jump if zero flag is set |
| 1111   | HALT     | Stop execution |

You can modify or extend this instruction set according to your custom control unit logic.

---

## 🔍 Example Program (Assembly View)

```assembly
LOAD R1, 0x01    ; Load value at memory[01] into R1
LOAD R2, 0x02    ; Load value at memory[02] into R2
ADD R3, R1, R2   ; R3 = R1 + R2
STORE R3, 0x03   ; Store result to memory[03]
HALT             ; Stop
```

---

## 📸 Screenshots / Diagrams

Add waveform screenshots or architecture diagrams in `doc/` and embed them here if available.

---

## 🧠 Future Improvements

- Add pipelining support
- Extend instruction set (MUL, DIV, etc.)
- Add I/O devices (UART, LEDs)
- Target real FPGA (e.g., Xilinx or Intel boards)

---



## 📄 License

This project is licensed under the MIT License. See LICENSE for more information.

---
