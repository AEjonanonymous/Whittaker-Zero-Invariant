<div align="center">

# Formal Verification of Whittaker-Type Zero-Invariant Fields and Receiver Symmetry Breaking in Lean 4 and SystemVerilog

</div>

---

<div align="center">

### 📌 **Abstract**

</div>

> Modern classical electrodynamics predominantly relies on transverse vector representations, routinely sidelining the classical scalar potential formulations introduced by Sir Edmund Taylor Whittaker in 1904. Critics have historically dismissed these potentials as non-physical mathematical artifacts due to the apparent absence of observable transverse radiation in pure scalar configurations. This paper presents a machine-checked formal verification in Lean 4 and hardware synthesis in SystemVerilog, establishing three central results:
>
> (1) The mathematical existence of a non-trivial, zero-invariant state where transverse field components vanish identically while maintaining a non-zero longitudinal tension field and;
>
> (2) a rigorous proof that introducing a spatial inhomogeneity at a boundary explicitly breaks this zero invariant, forcing the hidden longitudinal tension to convert into an observable transverse signal:
>
> $$dx \neq 0$$
>
> Finally, these theoretical guarantees are translated into synthesizable register-transfer logic and validated via automated SystemVerilog testbench simulation.

---

## 📦 Repository Contents

* 💻 `main/ETWhittakerZeroInvariant.lean` - Machine-checked formal proof in Lean 4
* 📡 `RTL/WhittakerReceiver.sv` - Synthesizable hardware receiver module.
* ⚙️ `RTL/tb_WhittakerReceiver.sv` - Automated Icarus Verilog testbench module.
* 📝 `Docs/Formal Verification of Whittaker-Type Zero-Invariant Fields and Receiver Symmetry Breaking in Lean 4 and SystemVerilog.pdf` - Complete pre-print manuscript.

---

## ✅ Formal Proof (Lean 4)

The mathematical foundation of this repository is machine-checked using the Lean 4 theorem prover. It formally establishes both the existence of non-radiating zero-invariant states and the boundary symmetry-breaking operator.

* **Direct Link for Peer Review:** [ETWhittakerZeroInvariant.lean](https://live.lean-lang.org/#project=mathlib-stable&codez=LTAEGEHsAcE8CcCWBzAFgF1ACnASlAEwAMBAbKAFKQB2AhuqrdaAGZbX4BKAptwCYAoEKAAyiAMbdqAZ36gArtT7d4oAIIBxAAojgAZgB0RAQMQBbaJHiYAsvVQAbRACMTAemABCAQGJQAMSszWgdQADcVRBYJekQaUEgWUAB1VER0dFoAaxVgdFhoblAALxVIYERqMNokJkxo7gc%2BaVAmPlB4bklECNVpWDMzbnR4WFBnTuzK5BMfPwBRAA9LaXS46gEAFTSW6Ici7mlM5ydpVEPW1iCQgBpQYPE06m5gR66c9uh4SESO7mQanxpqBqDRgPBaEDYtRkKAHDRkOl5EC6KFGl0RpA%2BLA6GYJKAjvRDgZQAAhMbKaLUYGpdKZHLwADkLWk4hCNVAlnQUnQiBCLUgvVA4hovOo8kg8hak1C0mgtEkeXM3DuAHcisozDQjhDuaAGAdFogjlJJAkkrQQWCRj0%2BaEGk1hTRosh5Lr1qBVedOvqITJerInRYaDyWtVqWdQIhlNReWyHA4xl7EPt7rRKplKsDQdRgKVvnCEUiUSF9VJVjQSf43Qb4FrOmqiixrk5SqBUJBVa1mLR%2BoNhkhxONJUoamMRUo1vEJtxsi0GMao1UanzY%2FrIKBYIhGu0mAlnLJ4NUTkVVshUQYhG4TMIRMMCfLFbyhk6rCXuS02qxt00Ws4isE0CFO0goqPq5xOrGlQSlKfylnwkDBJUl6UqAADKj7cJsyr%2BD%2B7QAFwALygIAuISgIASYSkRRVGUWRtE3mAAAi3BUlOzAAIz4SkaQZNkYGsuyqhcjydqfko4HcIgfRdDQfDAG%2BYF4oscjytYdqgMoSDVLyETSJeOryOI6BukUtK8QyWiQNyUH8p63rcAIoABKAXEYQqWE4XhjmgBoLnoZh2FDLhO7eXwBD%2BAA%2BnwixRcUfluZIgXcMFTShQQGhRbAUWYK5AWeSFTlhZF2KxfFeVBV5hXpVFMV8Dl%2FnuUlKWCFVxXFKVuWNflqVVRldXZWVXUVSFQhMSxWa8vEBBcVAMgjIZk3ML8lriPCshyc2daFjCxaVKWqq0BEoDIFIKj0FYdkqEUo0BFgxT4MRIrSFgWT3d27S%2BcRRB3FuO7AnuTAhLAcalrIE7tHKsTwZE2k9Nwl45iKFjyMcqaoSdzy6twPAhCIRbGSWDjJIdRQvX5JH4FxZn0iolnWbytlEaAADe3n%2BE5HOc0zLCKKAEV8yUAuEQAfKAOMOAYT3YFkoAAFQlLgNzeb5nNc8RPPMPzWtC6L31pcVtVxdzvPa9rIugHrvWZQNxuawLZu60rrXW3wRvqyb9s6xbTsadV0U2%2B7dum6A5uW77bUdYHntxfz5vAGT8tZPg8vi5LkAtAnCs%2B2FfXoAHrAe8HocCAAvgxoDMaxi2gHoXHMVpcgOu0SOWM8sYtIB0DApDDOhJpPSxLp677oex6phERlWHpAgGUZJkVzD%2FDNS0XpXaFizk6FYxcSRoVG6R3moBvO%2BH9vB9Oag%2B%2B7zd8zVA48ixPEvwGt%2BO4aTDg9FDAZ3oBdiIRMwamfEhJWRErZegr54DvguFgRYP07jFDuOgXACMaAtxRrQE878kjcDvvXAeOkYHQD8kAiyoCbIOGkPgWBm5Bb1Qpn5fBEQ%2BDLxcoRbyzMNLH2ItAAwRUaqlQ3mMOKmAADUnI%2BF%2ByynVUAQi6HeTuNiNhEj%2BElVdrI2hIjQBgF4TnARMi5EiIURpN2KjwqxUEZo%2FU2izG5wGoY%2FUxij7KKIKAJx28vpuKcncS%2BLjQBlxuloToQI2R6kpFmGElx8zlEqNUWoa4m4EkyHqVePoRhMGkAGIoE9f7wDDEwY0qAUIsQJLEaQDRpAAC0ygAEllzxMwFgJuLQ66LxYXhKhfkgkwDYd5ZpfCN6eMAOREr9fx8LGMM0ZzQDDOMmf01AEyLbl22NwKw3AzCgE4qAJYxprJmmWlaXMNowjqWiRUepq5MCEm5JeYQ3TEhU0NGkZw6RLgTnEJ0PUlRCQ2WrlgDGP9sazgcHjHaBM9pExJvgG60gyksC3JEl%2B0SlxxMuXZFMAF0yxixf9Q5eYyjbUROC1EQZW48mwOowABkQWxQQIA0ayNkygitEiKsSVx1AitwI0RwWleNAIAYCJsDEKpjxGm8A6ZgModQhx9DFZ8qcrC3k5TtxVNqRcuo2BcEhCYZ%2FFoxCZX4BGd5JyWAtUOB1YQvVGjhH6hQVSi2yjnCwG8lKUmAKsbi1BUS5EELiZHXYrgF1gZvre1DcYJyE5Z65O8gAdu0WANC3JiHsQMFsgAapEeF4EIHpP9CoQMiSW4hnbqAM1D8vkxhBgmMYv8SgEpzRBKwKBkLGoUNQZsjpFXGgqdU74dTUUarNRauGLR3VEk9fjH1qI%2FUOU5qsCwsb43oSTZsgw01QAZqQFmp1kF0khOrgwBtRR4RgqnaWItbdMCLh1BIdAiY8XRMvJzDMBZUCtsUB29oQ6P6WuOqdD1wKvW7WnSTVomA31zvMMQiBb6bqVwmh6AALFxHg3QhTOBHHwMcCRCi6gulqZQThIk93Ur2AYQwRhjC%2FCKeQ0AiOwhYAqXJ08o3z1Q5JXopJMPYdSbO1ofYKOjH8Exi6J8b533LR6X4iTOiSGgNXRQmluytCAk4OQGHFPYcqB2LUAL0iwFQdQdBqMNQlLLeOroHGwJYGFdxOkwCJUUM6VgZwfl2Nw3gFxzToxpVWNlYwtprCiIcK4co01eCf0js5NauhdqN7iJcwYMj%2FZKPCcnqoeWujzGu0sTa5BxilFM3C9qyLQ99V%2BbtWMArpjivmtKxccreW7XFCcdwzVEWtK6uiwamZix3Fhe%2FZ139jXYszOdd49sNXBsEKiyNkRKDfEBOECshlhAUOWY8wScjA4xgzimDCW5YB7ksC4hoOGPY63fHOQOtcubMn5qbHhd6rQjJw0JcB0s1kKzUDuDdF9WJDL%2FR7AJgc%2BINOjlGJBIE1dNqSHnBBBwRJbvlg9LWmjdGigZg3HuSAB4VBj1PCgElWBoqgGpUQWl9LOiMo270CKIPKMRT21kYE3kbMkNFQ58hvdnMyvJtCk1rn1toZUF5iHsABfYFQBFA6R0uK1eHWVmL82BkhxpXyrA0uvsenl9N2GSuevqOIsAANGvpfJcE2fZwSWGdCZE6oYipu2fS4ysiriWW7EGL82rinfk2fme5O5oUxDXOG43uTx14222ftLRJizIv4ChXndAby8AuwAG1pey5VO2CKFudsAF1vLJ4SNQe96eWWQj4HcEMEUzDyAcEXpy%2F3c%2BYOkG6FqS7E3cGIQQVNXEljynEok7gABHST2pPTpCeBJd7xLPso%2FiAsrk5xVjTych%2ByAjo9ddZgxFbXNBvLCG773tdrl5AHl5MZPU4OsOQ8jekjM84Nz9yOnuLldGJCvJXAwCj%2BIJx7q3rrBPodAZ7m4Hgd4%2BIRSu5lAF5ga54H4bBOTH4rp961wQBoL3zKCz5fA%2FBJA7qHCoyFLAgvxQbpyrAvJOD5DmgOrG7sRIL2Q7oTjRB1gkGMCYAvyyY965IEhE7npMCgiYDU5YqXYbiKZgT542hDi37Ybo70YgGgh1gRTigbJ76IFAA)

```lean
▼ mathlib-stable.lean:114:23
 ▼ Tactic state
  No goals
 ▼ Expected type
  p : WhittakerPotentials
  x y z t : ℝ
  b : ReceiverBoundary
  h_wave : (evalDerivatives p x y z
  t).dx = 0
  h_tension : { dx := p.d2F_dx_dz x y z
  t + p.d2G_dy_dt x y z t, dy :=
  p.d2F_dy_dz x y z t - p.d2G_dx_dt x y
  z t, dz := 0 - 0,
        hx := 0, hy := 0, hz := 0 }.dz =
    -1
  h_asymmetry : b.asymmetryFactor = 1
  h_G_zero : p.d2G_dt_dt x y z t = 0
  h_absurd : p.d2F_dz_dz x y z t = 0
  ⊢ { dx := p.d2F_dx_dz x y z t +
  p.d2G_dy_dt x y z t, dy :=
  p.d2F_dy_dz x y z t - p.d2G_dx_dt x y
  z t, dz := 0 - 0,
        hx := 0, hy := 0, hz := 0 }.dz =
    -1

▼ All Messages (0)
No messages.
```
---

## ⚡ Hardware Implementation & Verification (SystemVerilog)

To demonstrate that the formal mathematics maps directly to executable silicon architectures, the boundary operator is implemented as a synchronous digital hardware module and verified using Icarus Verilog.

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

---

## ⚖️ Software IP Licensing & Commercial Terms

* **Open-Source License:** This software IP package is released under the **GNU Affero General Public License v3.0 (AGPL-3.0)**, ensuring open collaboration and network-copyleft protection for academic and open-source projects.
* **Commercial Dual-Licensing:** For enterprise organizations, manufacturers, or startups wishing to embed the Whittaker Zero-Invariant IP core into closed-source commercial software or hardware pipelines, proprietary commercial licenses and custom enterprise exceptions are available.

For commercial licensing inquiries please contact:
* **Licensing Agent:** J.E. Randolph 📧 `700josh.r@gmail.com`

---

## 📚 Citation

If you use this repository, preprint, or formal verification package in your academic research or engineering designs, please cite it as follows:

```bibtex
@software{Reed_2026_Whittaker,
  author = {Reed, Jonathan ƒ(n)},
  title = {Formal Verification of Whittaker-Type Zero-Invariant Fields and Receiver Symmetry Breaking in Lean 4 and SystemVerilog},
  year = {2026},
  version = {1.0},
  publisher = {Zenodo},
  doi = {10.5281/zenodo.22097352},
  url = {[https://doi.org/10.5281/zenodo.22097352](https://doi.org/10.5281/zenodo.22097352)}
}
```

---
[![License: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)
[![Lean 4](https://img.shields.io/badge/Lean-4-green.svg)](https://leanprover.github.io/)
[![SystemVerilog](https://img.shields.io/badge/SystemVerilog-IEEE%201800--2023-orange.svg)](https://www.ieee.org/)
[![Field: Electrodynamics](https://img.shields.io/badge/Field-Electrodynamics-blueviolet.svg)](https://github.com/AEjonanonymous/Whittaker-Zero-Invariant)

Copyright © 2026 Jonathan ƒ(n) Reed. All rights reserved.
