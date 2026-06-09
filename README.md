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
julia --project=. scripts/run_demo.jl
julia --project=. scripts/generate_site.jl
```

## Validation

```powershell
julia --project=. -e "using Pkg; Pkg.test()"
julia --project=. scripts/smoke_check.jl
```

## Why this matters

Kinetic Gain Embedded tie-back:

This repo proves Kinetic Gain can ship auditable planning and optimization logic in Julia, not just render dashboards around it. The language-atlas signal is real: model, verify, and publish the same operator surface from Julia code.

## Product depth

This surface is meant for leaders who need to explain capacity tradeoffs without losing the underlying math. It shows which constrained lanes protect margin, which packets remain unserved, and where backlog pressure is becoming a customer-facing promise problem.

For technical reviewers, the important proof is that Julia owns the allocation logic. The same dependency-light optimization core generates the facility posture, lane allocation, JSON API output, static route pages, sitemap, and verification flow.

For GTM and diligence use, the repo ladders into capacity-planning briefings, backlog-recovery packets, facility tradeoff workshops, and embedded optimization surfaces for teams that need explainable allocation decisions.

## What these repos have in common

Kinetic Gain repos use the same operating pattern: name the risk, attach an owner-readable evidence view, expose the next action, and keep public proof close enough to implementation that the claim can be inspected.

This repo applies that pattern to constrained capacity planning. The broader portfolio applies it to payments, KYC, grants, CAPA, diagnostics, care variation, cloud, identity, and revenue systems, but the product shape is consistent: turn messy operating complexity into a board-ready and operator-usable control plane.

## Operating workflow

1. Load synthetic facility and lane constraints.
2. Search feasible allocations under hard capacity limits.
3. Score assignments by margin priority minus per-unit risk.
4. Publish facility posture, lane allocation, API output, sitemap, and static routes.
5. Validate the optimizer and generated site before release.

---

Part of the [Kinetic Gain Protocol Suite](https://suite.kineticgain.com/) operator portfolio · apex: [kineticgain.com](https://kineticgain.com) · live: [capacity.kineticgain.com](https://capacity.kineticgain.com/)
