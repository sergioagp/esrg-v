# esrg-v
ESRG-V: RV32I processor implementation
Single-cycle
Multi-cycle
Pipeline

## Project Structure
### Single-cycle Folder
```
single-cycle
├── dmem.v                    // Data Memory Block State
├── imem.v                    // Instruction Memory Block State
├── README.md
├── riscvtest.txt             // Binary Test Example
├── rvsingle                  // Folder Core IP
│   ├── controller            // Control Unit
│   │   ├── aludec.v
│   │   ├── controller.v
│   │   └── maindec.v
│   ├── datapath              // Datapath Unit
│   │   ├── alu.v             // ALU module
│   │   ├── commom            // Generic Digital Blocks 
│   │   │   ├── adder.v
│   │   │   ├── extend.v
│   │   │   ├── flopenr.v
│   │   │   ├── flopr.v
│   │   │   ├── mux2.v
│   │   │   └── mux3.v
│   │   ├── datapath.v        // Datapath top module
│   │   └── regfile.v         // Register File
│   └── riscvsingle.v
├── testbench
│   ├── riscvtest.s           // Test Example Assembly
│   └── testbench.v           // Non-synthesizable testbench file
└── top.v                     // Integration Module
```

## Usage

```

```

## Contributing
This RISC-V core is for educational use only, developed by Sérgio Pereira at ESRG
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.
