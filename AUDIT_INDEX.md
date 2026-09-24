# External Audit Index

This repository is the public, reviewable publication of the frozen Elyon Claim1–Claim7 proof package.

## Start here

1. `README.md` — verification entry point.
2. `PUBLIC_REPRODUCIBILITY.md` — clean-room public reproduction with no private-repository access required.
3. `public/PUBLIC_EXTERNAL_CERTIFICATE.md` — exact certified scope.
4. `public/INDEPENDENT_VERIFICATION.md` — preserved historical source-era reproduction instructions.
5. `public/EXTERNAL_CERTIFICATE_COMPLETE.json` — machine-readable certificate metadata.
6. `AUDIT_PROVENANCE.json` — source/publication provenance and historical CI runs.
7. `EXTERNAL_AUDIT_CHECKLIST.md` — reviewer checklist.
8. `SCOPE_AND_LIMITATIONS.md` — what the package does and does not establish.
9. `certs/elyon_claim1_7_only/SHA256SUMS` — frozen file digests.
10. `lean/MCore/Real/Claim1To7Only.lean` — public endpoint.
11. `lean/MCore/Real/BridgeSeven.lean` — seven-claim bridge and concrete endpoint.

## Certified chain

`Claim1 → Claim2 → Claim3 → Claim4 → Claim5 → Claim6 → Claim7 → EXTERNAL_CERTIFICATE → FINAL_ROOT → FINAL_PROOF`

Kernel endpoints:

- `MCore.Real.Claim1To7Only.canonicalClaim1To7`
- `MCore.Real.Claim1To7Only.canonicalExternalCertificate`
- `MCore.Real.Claim1To7Only.canonicalFinalRoot`
- `MCore.Real.Claim1To7Only.canonicalFinalProof`

## Historical audit anchors

- Proof baseline: `6634422c8004966b97c9c96b0f878852dbbd9175` — run `36048534795`
- Audit package: `d95cbb72b0ea671a1e70b6aa773a8f8647944de4` — run `36049892790`
- Audited release: `fed4f79b1b646be824904aa32bd05a5f481791b3` — run `36050478168`
- Publication source freeze: `d7298c44b8efc7202819f8095cef977e8929d4dc`

The historical SHAs identify the private source history from which this public snapshot was prepared. They are provenance anchors, not commits that must exist in this public repository.

## Independent-review boundary

A successful Lean build establishes that the stated formal terms typecheck under the pinned Lean/mathlib environment. It does not, by itself, establish that the formal definitions exactly capture the standard P versus NP problem. That correspondence is a separate mathematical-review obligation.
