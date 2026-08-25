<div align="center">

# Formal Verification of Whittaker-Type Zero-Invariant Fields and Receiver Symmetry Breaking in Lean 4 and SystemVerilog

</div>

---

<div align="center">

📌 **Abstract**

</div>

> "Modern classical electrodynamics predominantly relies on transverse vector representations, routinely sidelining the classical scalar potential formulations introduced by Sir Edmund Taylor Whittaker in 1904. Critics have historically dismissed these potentials as non-physical mathematical artifacts due to the apparent absence of observable transverse radiation in pure scalar configurations. This paper presents a machine-checked formal verification in Lean 4 and hardware synthesis in SystemVerilog, establishing three central results: (1) The mathematical existence of a non-trivial, zero-invariant state where transverse field components vanish identically while maintaining a non-zero longitudinal tension field; (2) a rigorous proof that introducing a spatial inhomogeneity at a boundary explicitly breaks this zero invariant, forcing the hidden longitudinal tension to convert into an observable transverse signal ($dx \neq 0$); and (3) the successful translation of these theoretical guarantees into synthesizable register-transfer logic, validated via automated SystemVerilog testbench simulation."

---

## 📦 Repository Contents

* 🧠 `lean/ETWhittakerZeroInvariant.lean` - Machine-checked formal proof in Lean 4
* ⚙️ `rtl/WhittakerTypes.sv` - Fixed-point type definitions package
* 📡 `rtl/WhittakerReceiver.sv` - Synthesizable hardware receiver module
* 🔬 `tb/tb_WhittakerReceiver.sv` - Automated Icarus Verilog testbench harness

---

## 🧠 Formal Proof (Lean 4)

The mathematical foundation of this repository is machine-checked using the Lean 4 theorem prover and Mathlib. It formally establishes both the existence of non-radiating zero-invariant states and the boundary symmetry-breaking operator.

* **Direct Link for Peer Review & Source:** [ETWhittakerZeroInvariant.lean](https://github.com/AEjonanonymous/Whittaker-Zero-Invariant/blob/main/ETWhittakerZeroInvariant.lean)

```text
mathlib-stable.lean:114:23
Tactic state
No goals
Expected type
p: WhittakerPotentials
xyzt: ℝ
b: ReceiverBoundary
h_wave: (evalDerivatives p x y z t).dx = 0
h_tension: {dx := p.d2F_dx_dz x y z t + p.d2G_dy_dt x y z t, dy := p.d2F_dy_dz x y z t - p.d2G_dx_dt x y z t, dz := 0-0, hx := 0, hy := 0, hz := 0}.dz = -1
h_asymmetry: b.asymmetryFactor = 1
h_G_zero: p.d2G_dt_dt x y z t = 0
h_absurd: p.d2F_dz_dz x y z t = 0
⊢ {dx := p.d2F_dx_dz x y z t + p.d2G_dy_dt x y z t, dy := p.d2F_dy_dz x y z t - p.d2G_dx_dt x y z t, dz := 0-0, hx := 0, hy := 0, hz := 0}.dz ≠ -1
```
---

## ⚡ Hardware Implementation & Verification (SystemVerilog)

To demonstrate that the formal mathematics maps directly to executable silicon architectures, the boundary operator is implemented as a synchronous digital hardware module and verified using Icarus Verilog.

* **Core Files:** `WhittakerTypes.sv` & `WhittakerReceiver.sv`
* **Testbench:** `tb_WhittakerReceiver.sv`

### Simulation Log Output (`Icarus Verilog 12.0`)
```text
[2026-08-24 18:36:04 UTC] iverilog '-Wall' '-g2012' design.sv testbench.sv && unbuffer vvp a.out
--- Starting Whittaker Hardware Verification ---
Symmetric Mode | Alpha=0 | Output=0 | Detected=0
Asymmetric Mode | Alpha=1 | Output=800 | Detected=1
--- Testbench Passed Successfully ---
testbench.sv:70: $finish called at 46 (1s)
Done
```
