# Independent reviewer report template

## Identification

- Reviewer:
- Affiliation:
- Date:
- Public repository:
- Public commit SHA:
- Operating system:
- Lean toolchain:
- Mathlib revision:

## Reproduction

- `sha256sum -c certs/elyon_claim1_7_only/SHA256SUMS`: PASS / FAIL
- `bash scripts/verify_public_release.sh`: PASS / FAIL
- `lake build MCore.Real.Claim1To7Only`: PASS / FAIL
- Axiom output captured: YES / NO

## Formal-source audit

- Claim1 statement reviewed:
- Claim2 statement reviewed:
- Claim3 statement reviewed:
- Claim4 statement reviewed:
- Claim5 statement reviewed:
- Claim6 statement reviewed:
- Claim7 statement reviewed:
- `canonicalSevenEndpoint` reviewed:
- `canonicalSevenGreenEvidence` reviewed:
- No unintended vacuity/specialization found:
- Reduction/encoding semantics reviewed:

## Correspondence audit

Describe whether the repository-local definitions and endpoints correspond to the standard definitions of P, NP, polynomial-time deterministic computation, nondeterministic computation, SAT/CNF encodings, and the claimed external theorem.

## Findings

### Confirmed

### Questions

### Defects or discrepancies

### Required changes

## Conclusion

State only what the evidence supports. A reproducible Lean build and a mathematical correspondence review are separate conclusions.
