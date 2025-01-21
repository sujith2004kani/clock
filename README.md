# Clock Divider: `sec_clk` Module

This repository contains a Verilog implementation of a clock divider module (`sec_clk`) that converts a 65,536 Hz clock signal into a 1 Hz clock signal. The project also includes a testbench (`tb_clk_sec`) to verify its functionality.

---

## **Project Overview**

### `sec_clk` Module

The `sec_clk` module is a clock divider that produces a 1 Hz clock (`clk_out`) from a 65,536 Hz input clock (`clk_in`) by counting the input clock cycles. The output toggles every 32,768 cycles.

### Features:
- **Inputs**:
  - `clk_in`: 65,536 Hz clock signal.
  - `rst`: Asynchronous reset signal.
- **Output**:
  - `clk_out`: 1 Hz output clock signal.
- **Counter**: A 16-bit counter tracks clock cycles and toggles the output at appropriate intervals.

### `tb_clk_sec` Testbench

The testbench validates the functionality of the `sec_clk` module:
- Simulates the `clk_in` signal at 65,536 Hz.
- Tests the behavior of the module with the reset (`rst`) signal.
- Monitors the `clk_out` signal for correct toggling at 1 Hz.

---

## **Files**

| File Name       | Description                                                                 |
|------------------|-----------------------------------------------------------------------------|
| `sec_clk.v`     | Verilog code for the clock divider module.                                  |
| `tb_clk_sec.v`  | Testbench to simulate and verify the behavior of the `sec_clk` module.      |

---

## **Usage**

### Simulating the Design
1. Clone the repository:
   ```bash
   git clone <repository_url>
   cd <repository_directory>
   ```
2. Compile and simulate using your preferred simulator (e.g., ModelSim, VCS, XSIM):
   ```bash
   # Example using Icarus Verilog
   iverilog -o sec_clk_tb tb_clk_sec.v sec_clk.v
   vvp sec_clk_tb
   ```
3. Observe the simulation output in the terminal or waveform viewer.

### Expected Output
- When `rst` is asserted, `clk_out` is reset to `0`.
- After releasing `rst`, `clk_out` toggles at a 1 Hz frequency.

---

## **Waveform Verification**
Use a waveform viewer (e.g., GTKWave) to inspect the signals:
```bash
vvp sec_clk_tb
gtkwave dumpfile.vcd
```

---

## **Contributing**
Feel free to fork this repository and submit pull requests to improve or extend the project. Contributions are welcome!

---
