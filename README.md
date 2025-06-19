
---

## Objective

To verify the correctness of a D Flip-Flop using SystemVerilog constructs in a structured and reusable testbench framework.

---

## 🚀 Features

- ✅ Modular testbench architecture
- 🧪 Randomized stimulus generation
- 🔁 Supports multiple test iterations
- 🔍 Automatic output comparison using a scoreboard
- 🧾 Clean waveform generation and logging

---

## 🏗️ How It Works

1. **Generator** creates transactions with random values of `d` and `reset`.
2. **Driver** sends them to the DUT through the **Interface**.
3. **Monitor** captures the output `q`.
4. **Scoreboard** checks the DUT output against the expected behavior.
5. **Environment** links all blocks, and **Test** controls execution.

---

## ▶️ Running the Simulation

To run this project:

```bash
vcs -sverilog tb.sv -o simv
./simv
