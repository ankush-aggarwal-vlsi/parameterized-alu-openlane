# Parameterized 32-bit ALU: RTL-to-GDSII ASIC Implementation

This repository presents the complete RTL-to-GDSII implementation of a parameterized 32-bit Arithmetic Logic Unit (ALU) using the OpenLane2 open-source ASIC flow and the SKY130A Process Design Kit (PDK).

The design was written in Verilog HDL, functionally verified through simulation, synthesized using Yosys, physically implemented using OpenROAD, and verified through DRC and LVS before GDSII generation.

---

## Design Flow

RTL Design (Verilog)
→ Functional Verification
→ Logic Synthesis (Yosys)
→ Floorplanning
→ Power Distribution Network
→ Placement
→ Clock Tree Synthesis
→ Global Routing
→ Detailed Routing
→ DRC (Magic & KLayout)
→ LVS (Netgen)
→ GDSII Generation

---

## Tools

- Verilog HDL
- Icarus Verilog
- GTKWave
- OpenLane2
- Yosys
- OpenROAD
- Magic
- KLayout
- Netgen
- SKY130A PDK

---

## Repository Structure

```
rtl/          RTL source
testbench/    Testbench
simulation/   Simulation files
synthesis/    Synthesis outputs
config/       OpenLane configuration
scripts/      Utility scripts
def/          Final DEF
netlist/      Synthesized netlists
gds/          Final GDSII layout
reports/      DRC, LVS and implementation reports
```

---

## Results

| Metric | Value |
|---------|------:|
| Technology | SKY130A |
| Flow | OpenLane2 |
| Standard Cell Area | 11076.9 µm² |
| Core Area | 21021.4 µm² |
| Die Area | 26390.5 µm² |
| Final Layout | Generated |
| DRC | Completed |
| LVS | Completed |

---

## Generated Files

- Final GDSII
- Routed DEF
- Gate-level Netlist
- DRC Reports
- LVS Reports

---

## Author

**Ankush Aggarwal**

M.Tech (Electronics & Communication Engineering)

University School of Information, Communication & Technology (USICT)

GitHub: https://github.com/ankush-aggarwal-vlsi

LinkedIn: https://www.linkedin.com/in/ankushaggarwal-vlsi/
