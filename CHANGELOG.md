# Changelog

## v1.0.0-prod — 2026-05-27

Production-readiness hardening on top of v0.1-shipped.

- Verified the `pages` GitHub Actions workflow (Julia 1.12, julia-actions/setup-julia@v2) runs `Pkg.test()` + `smoke_check.jl` + site generation + GitHub Pages deploy — most recent run on `main` completed with `success`.
- Confirmed live operator surface serving 200 OK at https://capacity.kineticgain.com/.
- Confirmed AGPL-3.0-or-later licensing (LICENSE) and `SECURITY.md`.
- Added missing my-lane production-status files for squad-doctrine parity: `CODE_OF_CONDUCT.md` and weekly `dependabot.yml` (github-actions package ecosystem; Julia is not yet a Dependabot-supported ecosystem so it is intentionally omitted).
- No changes to source, README content, docs, or screenshots — those remain the v0.1-shipped surface from the build lane.

## v0.1-shipped

- initial public release of the Julia capacity optimizer surface
- shipped brute-force constrained allocation logic across facilities and lanes
- published custom-domain static operator report to `capacity.kineticgain.com`
