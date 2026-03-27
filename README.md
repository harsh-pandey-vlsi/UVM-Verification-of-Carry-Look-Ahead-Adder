# UVM-Based Verification of 4-bit Carry Look-Ahead Adder (CLA)

## 📌 Overview
This project implements a **UVM (Universal Verification Methodology)** testbench in SystemVerilog to verify a 4-bit Carry Look-Ahead Adder (CLA). The focus is on **constrained-random verification, functional coverage, and bug detection**, making it closer to industry-level verification practice.

---

## 🎯 Objectives
- Verify correctness of CLA carry and sum logic  
- Implement a complete UVM testbench architecture  
- Apply constrained-random stimulus generation  
- Measure verification quality using functional coverage  
- Validate the environment via bug injection  

---

## 🧠 CLA Design Concept

Carry Look-Ahead Adders improve speed by computing carry signals in parallel using:

- **Generate:** `G = A & B`  
- **Propagate:** `P = A ^ B`  

This avoids ripple delay and enables faster addition.

---

## 🏗️ UVM Testbench Architecture
Test
└── Environment
├── Agent
│ ├── Driver
│ ├── Monitor
│ └── Sequencer
├── Scoreboard
└── Coverage


---

## ⚙️ Tools & Technologies
- **SystemVerilog**
- **UVM 1.2**
- **QuestaSim / ModelSim**
- Optional: **EDA Playground**

---

## 🔄 Verification Flow

1. **Sequence** generates randomized transactions  
2. **Driver** applies inputs to the DUT  
3. **Monitor** observes DUT signals and reconstructs transactions  
4. **Scoreboard** compares DUT output with expected result  
5. **Coverage** collects functional metrics  

---

## 🔍 Features Implemented

### ✅ Constrained Random Verification
- Randomized inputs (`a`, `b`, `cin`)  
- Targeted constraints for carry propagation scenarios  

### ✅ Functional Coverage
- Coverpoints on inputs and output  
- Cross coverage of `a`, `b`, and `cin`  
- Achieved **88.23% coverage**

### ✅ Scoreboard-Based Checking
- Golden reference: `expected = a + b + cin`  
- Automatic mismatch detection  

### ✅ Bug Injection & Detection
- Introduced fault in carry logic  
- Scoreboard successfully flagged incorrect outputs  

---

## Key Test Scenarios
- Random input combinations  
- Full carry propagation (1111 + 0000 + cin)  
- Maximum overflow (1111 + 1111)  
- Zero case (0000 + 0000)  

## Key Learnings
- UVM component hierarchy and phase execution  
- Transaction-level modeling (TLM communication)  
- Importance of coverage in verification completeness  
- Debugging using scoreboard and waveform analysis  
- Validating testbench quality using bug injection  

## 👤 Author
**Harsh Pandey**  
VLSI Design & Verification Enthusiast



