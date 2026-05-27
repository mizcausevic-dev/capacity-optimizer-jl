# capacity-optimizer-jl

Julia optimization surface for constrained capacity planning, lane allocation, and recovery posture.

## What it shows

- real Julia added to the public Kinetic Gain language atlas
- constrained facility and lane allocation with auditable search logic
- buyer-readable operator reporting generated from the same optimization core

## Routes

- `/`
- `/capacity-lane/`
- `/constraint-matrix/`
- `/allocation-posture/`
- `/verification/`
- `/docs/`

## Local development

```powershell
& 'C:\Users\chaus\AppData\Local\Programs\Julia-1.12.6\bin\julia.exe' --project=. scripts/run_demo.jl
& 'C:\Users\chaus\AppData\Local\Programs\Julia-1.12.6\bin\julia.exe' --project=. scripts/generate_site.jl
```

## Validation

```powershell
& 'C:\Users\chaus\AppData\Local\Programs\Julia-1.12.6\bin\julia.exe' --project=. -e "using Pkg; Pkg.test()"
& 'C:\Users\chaus\AppData\Local\Programs\Julia-1.12.6\bin\julia.exe' --project=. scripts/smoke_check.jl
```

## Why this matters

Kinetic Gain Embedded tie-back:

This repo proves Kinetic Gain can ship auditable planning and optimization logic in Julia, not just render dashboards around it. The language-atlas signal is real: model, verify, and publish the same operator surface from Julia code.

---

Part of the [Kinetic Gain Protocol Suite](https://suite.kineticgain.com/) operator portfolio · apex: [kineticgain.com](https://kineticgain.com) · live: [capacity.kineticgain.com](https://capacity.kineticgain.com/)
