# External audit checklist

An independent reviewer can use this checklist without access to the private source repository.

- [ ] Clone this public repository into a clean environment.
- [ ] Confirm `lean-toolchain` is `leanprover/lean4:v4.19.0`.
- [ ] Inspect `lakefile.lean` and confirm mathlib is pinned to `v4.19.0`.
- [ ] Run `sha256sum -c certs/elyon_claim1_7_only/SHA256SUMS`.
- [ ] Run `lake update`.
- [ ] Run `lake build MCore.Real.Claim1To7Only`.
- [ ] Run a full `lake build`.
- [ ] Inspect the output of the four `#print axioms` commands in `Claim1To7Only.lean`.
- [ ] Inspect `BridgeSeven.lean` and every imported theorem used to inhabit the seven evidence fields.
- [ ] Search the critical chain for `sorry`, `admit`, and custom axiom/constant declarations.
- [ ] Verify that each Claim1–Claim7 statement has the intended quantifiers, premises, and semantic domain.
- [ ] Verify that `canonicalSevenEndpoint` does not make a broader intended statement vacuous or overly specialized.
- [ ] Verify correspondence between the repository-local theorem statements and the standard P versus NP definitions.
- [ ] Verify the historical run IDs and SHAs independently on GitHub where those records are publicly accessible.
- [ ] Record reviewer name, environment, date, public commit SHA, Lean version, mathlib revision, command outputs, and any discrepancies.

A GREEN CI result should be treated as reproducibility evidence, not as a substitute for the semantic and mathematical checks above.
