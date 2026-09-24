# Press briefing — ELYON Claim1-7 formal verification package

## What is being released

A Lean-formalized, repository-scoped chain of seven claims has passed a reproducible CI and kernel-build pipeline. The package includes source code, manifests, SHA-256 checksums, frozen/certified Git references, and reproduction instructions.

## What has been verified

The following scoped endpoint compiled successfully in Lean 4.19.0:

`MCore.Real.Claim1To7Only.canonicalFinalProof`

The release run `36050478168` completed successfully at commit `fed4f79b1b646be824904aa32bd05a5f481791b3`.

## What this does not establish by itself

This release is not independent peer review and should not be described as a generally accepted solution of P versus NP. External reviewers still need to examine whether the formal definitions and intermediate claims correspond exactly to the standard P versus NP problem and whether all mathematical assumptions are appropriate.

## Materials for reviewers

Start with:

1. `PUBLIC_EXTERNAL_CERTIFICATE.md`
2. `certs/elyon_claim1_7_only/REPRODUCE.md`
3. `certs/elyon_claim1_7_only/AUDIT_MANIFEST.json`
4. `certs/elyon_claim1_7_only/SHA256SUMS`
5. `lean/MCore/Real/Claim1To7Only.lean`

## Suggested accurate description

> A Lean-verified internal formalization has produced a reproducible, audited Claim1–Claim7 certificate chain. The authors are releasing the formal package for independent mathematical review.

Avoid describing the work as independently verified or as a settled solution before external specialists have reviewed the formalization.
