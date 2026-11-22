# Recovered P01 terminal producer — evidence reconciliation (2026-11-22)

## Source candidates

1. `ShantiDraconis/m-core-p-vs-np`, branch `atk/p01-material-inhabitant-frontier-20260930`, `lean/MCore/Real/P01TerminalCertificate.lean`:
   `theorem p01ConstructionGap : P01ConstructionGap := P01CoreDecodeFailurePhysical.p01ConstructionGap`.
2. Same repository, branch `atk/p01-terminal-promotion-candidate-20260930`, `lean/MCore/Real/P01TerminalMaterialCertificate.lean`:
   `theorem p01_closed_no_hypothesis : P01ConstructionGap := p01ConstructionGap`.
3. `ShantiDraconis/M-Core/conditional/PROOF_SEARCH.md` (2026-10-13) reports a 32-repository / 2210-branch source scan and records these as hypothesis-free P01 candidates. The scan reports CI certification, but no fresh CI result has been independently checked in this reconciliation.

## Verified by source inspection

The candidate declarations have no explicit hypotheses and refer to upstream Lean proof terms. The `P01FinalCertificate.lean` definition on the source repository's default branch is `P01ConstructionGap := Nonempty P01MachineConstruction`, where `P01MachineConstruction` packages a finite-state NTM, polynomial time bound, halting, and correctness. The producer's exact definition and all imported dependencies must be compared at the pinned branch before promotion.

## Pending acceptance gates

- Pin the full producer commit SHA and all imported Lean dependencies.
- Run a clean Lean build on the candidate branch, capture the complete `#print axioms` output, and check for `sorry`/`admit`/new target-equivalent axioms.
- Compare the producer's `P01ConstructionGap` definition with the consuming `FinalExternalTwoGap.lean` definition, including machine semantics, quantifiers, and compilation/model fidelity.
- Import the proven producer into the current consumer and run the full dependency/CI suite.

Until these checks succeed, classify P01 as **PROOF_CANDIDATE_FOUND / PROMOTION_PENDING**, not `CLOSED` and not `NO_PROOF_FOUND`.

## Other terminal producer

`G21Pointwise` remains **OPEN_MATH** in the reviewed evidence. The existence of a P01 producer does not establish SAT ∉ P or P ≠ NP.

No existing certificate, release state, or historical artifact is rewritten by this ledger.
