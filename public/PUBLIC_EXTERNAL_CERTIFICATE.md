# ELYON Claim1-7 — External Certificate

## Certified scope

This certificate covers exactly the repository-scoped chain:

**Claim1 → Claim2 → Claim3 → Claim4 → Claim5 → Claim6 → Claim7 → EXTERNAL_CERTIFICATE → FINAL_ROOT → FINAL_PROOF**

No unrelated P01, G21, P02Target, FinalExternalTwoGap, or other proof lane is promoted by this certificate.

## Verified release

- Audited release commit: `fed4f79b1b646be824904aa32bd05a5f481791b3`
- Audited release run: `36050478168` — SUCCESS
- Audit package commit: `d95cbb72b0ea671a1e70b6aa773a8f8647944de4`
- Audit run: `36049892790` — SUCCESS
- Clean proof baseline: `6634422c8004966b97c9c96b0f878852dbbd9175`
- Clean baseline run: `36048534795` — SUCCESS
- Lean: `leanprover/lean4:v4.19.0`
- Mathlib: `v4.19.0`

## Kernel endpoints

- `MCore.Real.Claim1To7Only.canonicalClaim1To7`
- `MCore.Real.Claim1To7Only.canonicalExternalCertificate`
- `MCore.Real.Claim1To7Only.canonicalFinalRoot`
- `MCore.Real.Claim1To7Only.canonicalFinalProof`

## Audit evidence

The package includes:

- source/manifest/certificate presence checks;
- rejection of `sorry` and `admit` in the scoped wrapper;
- rejection of custom `axiom`, `constant`, and `constants` declarations in the scoped wrapper;
- Lean kernel build of `MCore.Real.Claim1To7Only`;
- `#print axioms` statements in the source for the certified endpoints;
- SHA-256 manifest;
- reproducibility instructions;
- frozen and certified Git refs.

## Frozen/certified references

- `frozen/elyon-claim1-7-release-green-fed4f79b`
- `cert/elyon-claim1-7-release-run36050478168`
- `final/elyon-claim1-7-release-audited`

## External-use disclosure

This document certifies the **repository-scoped Lean/CI state described above**. It should not be presented as independent peer review, journal acceptance, or external mathematical validation. Any broader claim—such as a complete resolution of P versus NP—requires independent expert review of the definitions, reductions, theorem statements, dependency chain, and correspondence between the formal model and the standard mathematical problem.
