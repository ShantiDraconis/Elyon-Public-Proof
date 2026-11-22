# P01 prior-closure claim reconciliation — 2026-11-22

## Newly recovered source
- [m-core-p-vs-np PR #44](https://github.com/ShantiDraconis/m-core-p-vs-np/pull/44), titled "P01 fechado + P ≠ NP reduzido a G2.1 no modelo endurecido", reports `P01RawTotalizationProducer.p01ConstructionGap_closed : P01ConstructionGap`, with CI runs 37913791428 and 38420031935.
- The PR reports `PNPAfterP01.lean` and `sat_in_np : InNP (SATBits circuitBitEncoding)`, while expressly retaining G2.1 as OPEN.
- Direct fetches of `lean/MCore/Real/P01RawTotalizationProducer.lean` and `lean/MCore/Real/PNPAfterP01.lean` from the repository default branch returned 404 on this audit. This does **not** refute the PR; it means the current main-path integration is unverified.
- The earlier producer branch `atk/p01-material-inhabitant-frontier-20260930` does contain `P01CoreDecodeFailurePhysical.p01ConstructionGap` and `#print axioms` commands. Source inspection alone does not establish successful compilation or absence of imported axioms.

## Required evidence before status promotion
1. Resolve PR #44 head SHA and whether it merged, and fetch its exact producer files at that SHA.
2. Inspect referenced CI logs, not only PR prose. Run a clean pinned Lean build and capture actual `#print axioms` output.
3. Verify exact `P01ConstructionGap` and `G21Pointwise` definitions and that imports refer to the same mathematical model and propositions.
4. Only then integrate producer code and update the consuming Elyon certificates.

Status: P01 = REPORTED_CLOSED_IN_PR44 / KERNEL_REVALIDATION_PENDING; G21 = OPEN_MATH. No external P≠NP proof or terminal certificate is claimed here.
