# ATK Recovery Index

Canonical recovery map for the seven-problem ATK workflow.
Updated: 2026-09-21.

## Rules
1. Search this file before recreating any mathematical attack.
2. Frozen/certified artifacts are immutable provenance.
3. Reuse requires statement + hypotheses + quantifiers + domain + constants + dependencies + axioms + SHA compatibility.
4. A GREEN audit/build is not a proof of the official problem.
5. No sorry/admit/sorryAx, hidden axioms, oracle leakage, circular dependencies, trivial/empty witnesses, or semantic weakening.
6. Superseded branches are provenance only; do not cherry-pick them blindly.
7. Progress means reduction/proof of OPEN_MATH, not additional adapters or microtests.

## Canonical chain
CERTIFIED/FROZEN HISTORY
→ FAIL-PROOF / SEMANTIC AUDIT
→ RECOVER COMPATIBLE PRIOR MATERIAL
→ MINIMAL OPEN_MATH
→ PROVE | DISPROVE | REDUCE
→ KERNEL + AXIOM + CIRCULARITY + SEMANTIC CHECK
→ CERTIFY/FREEZE
→ NEXT OPEN_MATH
→ OFFICIAL ENDPOINT

## Riemann
Active proof line: research/pure-math-final-proof-v1.
Recovered branches:
- research/r2-dnlimit-zero — material delta: research/r2/BackwardDenseEndpoint.lean + .github/workflows/r2-formal-endpoint.yml; compared to active line: +6/-22.
- attack/r01-zero-residue-parallel-20260921 — BackwardDenseEndpoint.lean + RH/K9_RiemannHypothesis.lean + workflow; +12/-22.
- research/r2-zero-residue-probe — superseded (+0/-13).
- attack/typed-final-endpoint-v1 — old semantic source; -211 from active line, reuse only by exact semantic comparison.
Recovery chain:
typed faithful RH endpoint
→ audit/recover BackwardDenseEndpoint
→ ZERO_RESIDUE_SUM_UNCONDITIONAL_CONTROL
→ DNLimit=0
→ prove exact implication to classical critical-line endpoint.
Never treat GATE_LEDGER text as an existing theorem.

## Hodge
Active line: attack/h01-general-algebraicity-parallel-20260921.
Historical R3a branches are already behind active line and must not be reattacked:
- attack/r3-specialization-geometry-v1
- attack/r3a-hilbert-properness-v1
- attack/r3a-semantic-relative-cycle-v3
- attack/r3a-valuative-relative-cycle-v4
- attack/r3a-minimal-bridge-valuative-v5
Frozen provenance:
- frozen/hodge-r3-relative-cycle-cut-v4-8ba37af1
- cert/hodge-r3-relative-cycle-cut-v4-8ba37af1-run35525478618
Current material endpoint:
forall smooth projective X and rational Hodge alpha,
rationalSpanOfCycles alpha.
Equivalently O_Hodge(X,p)=0 universally.
R3a is provenance/reusable reduction, not the final algebraicity theorem.

## Yang-Mills
Active line used for comparison: attack/y01-4d-gap-parallel-20260921.
Recovered material:
- attack/y01-harden-physical-interfaces-20260921
  - lean/MCore/YangMills/A1/HardenedPhysicalInterfaces.lean
  - SEMANTIC_GATE.json
- attack/y01-uniform-clustering-from-gap-20260921
  - HardenedPhysicalInterfaces.lean
  - UniformIntegerClustering.lean
- attack/y01-k14-clustering-adapter-20260921
  - HardenedPhysicalInterfaces.lean
  - UniformIntegerClustering.lean
  - K14ClusteringAdapter.lean
- attack/hard-ym-4d-gap-theoremkernel — same material family.
- attack/B6-k30-concrete-realization-v1 — superseded/behind; provenance only.
Recovery chain:
HardenedPhysicalInterfaces
→ UniformIntegerClustering
→ K14ClusteringAdapter
→ audit hypotheses/axioms/trivial witnesses
→ isolate genuine 4D construction/reconstruction delta
→ rigorously define H, vacuum, spectrum
→ Delta_YM = inf(Spec(H)\{E0})-E0 > 0
→ official QYM existence + positive mass-gap endpoint.
Do not reuse the old A1 zero-estimate/trivial witness path.

## Beal
Do not reattack K8/K9/K10.
Certified/reusable logic:
CommonDivisor(nontrivial) → prime divisor → CommonPrime → endpoint wiring.
Minimal OPEN_MATH:
for every admissible BealData,
1 < gcd(A,gcd(B,C)).
Equivalent counterexample obstruction:
equation + x,y,z>2 + gcd(A,gcd(B,C))=1.
Attack only elimination of that residual case.

## P vs NP
Active clean continuation: `attack/material-orientation-clean-v2-20260921` at `9c0e4e6de3f3d899ee55b2f945a91d37e4cf34e3`, based directly on canonical frozen `969408f2d84121667319da04680893dd2978e9a6` (`ahead=1`, `behind=0`).
Superseded for continuation: `attack/material-orientation-clean-20260921` (diverged from canonical base; retain provenance only).
Reuse:
- audit/EndpointCompression.lean
- audit/repro_PNP.lean
- lean/MCore/BackwardAudit/OrientedWitnessBoundary.lean
OfficialModelMatch and LowerBoundWitness wiring already exist.
Minimal OPEN_MATH:
genuine asymptotic not_in_p for SAT in the fixed official model.
Canonical chain:
SAT operational NTM/model
→ genuine lower-bound theorem
→ LowerBoundWitness.not_in_p
→ FixedWitness on OfficialModelMatch
→ official P != NP.
C12 finite data, PaysOff, costBits/Potential, and arbitrary existential interfaces do not discharge this.

## BSD
Reuse K12/K13/K14 only as fail-closed audit/wiring.
Exact rank-part target:
forall d : BSDArithmeticAnalyticData,
d.analyticOrderAtOne = d.mordellWeilRank.
RankPartWitnessContract consumes exactly this universal witness.
After rank part, full BSD still requires the universal leading-coefficient formula and arithmetic factors; do not promote rank equality alone to full BSD.
Historical curve-specific computations are evidence only, not universalization.

## Navier-Stokes
Repository: ShantiDraconis/navier-stokes-critical-barrier-audit.
Active clean continuation: `attack/n01-uniformization-clean-v2-20260921` at `0ceb0c52180dba965b8ce80255b92795ccc7e7b5`, based directly on canonical frozen `b7caecc2db571679af4b6ee64829253dcd97cea2` (`ahead=1`, `behind=0`).
Superseded for continuation: `attack/n01-uniformization-clean-20260921` (diverged from canonical base; retain provenance only).
Mutation rule: no commits/issues/releases without explicit user approval.
Known state:
- FAILPROOF GREEN: run 35565581964, job 106226618089.
- audit run 35565581962: RED around G1C axiom-footprint stage.
- run 35565581973: Lean RED at executable proof-escape hygiene; Coq GREEN; Agda GREEN; Isabelle cancelled.
Canonical chain:
proof-escape hygiene
→ G1C axiom footprint
→ ActualNS → XiEpsPDE → signed depletion
→ N02 endpoint regularity.
Do not roll back to N00.

## Recovery protocol
When ATK resumes:
1. Read this index.
2. Read each repo GATE_LEDGER/FRONTIER only as status metadata.
3. Search branches before concluding a file/theorem is absent.
4. Compare candidate branch against active branch.
5. Mark candidate as RECOVER, ALREADY_ABSORBED, SUPERSEDED, or INCOMPATIBLE.
6. Fetch exact files from the candidate ref.
7. Audit semantic identity and axioms.
8. Port only uncovered mathematical delta.
9. Never reduce OPEN_MATH counts merely because a branch/file exists.


## Recovery materialized — 2026-09-21 late pass

The following compatible prior artifacts have now been materialized onto the clean canonical attack lines rather than merely referenced:

- Riemann: `frozen/nb-zero-limit-density-equivalence-green-d6a291b4` -> active RH line. This adds the certified equivalence `FiniteSpanApproximatesChi ↔ DNLimit = 0 ↔ DNToZero`.
- Yang-Mills: `frozen/y01-uniform-integer-clustering-green-37acd577` -> active Y01 line. Hardened physical interfaces and `UniformPhysicalMassLowerBound -> UniformIntegerDistanceClustering` are recovered. `K14ClusteringAdapter.lean` is SOURCE/BUILD_PENDING.
- P vs NP: `frozen/p01-verified-relation-green-1453539c` and `frozen/p01-component-failproof-green-9e21b631` -> active clean P01 line. Canonical encoding/witness/verifier relation is reused; legacy parser/guess/verifier component records remain rejected as vacuous. `CanonicalSATFrameMachineV2.lean` is SOURCE/BUILD_PENDING.
- BSD: `frozen/bsd-universal-producer-countermodel-green-6258a9f9` -> active D01 line. Unrestricted quantification over arbitrary `BSDArithmeticAnalyticData` is formally refuted as an abstraction; the producer must stay on realizable elliptic-curve data.
- Navier-Stokes: `frozen/n01-hardened-geometry-green-04aa4c04` -> active N01 line. Corrected tangential projection and quantitative critical-coherence contract are recovered.
- Beal: the canonical B01 base already absorbs `frozen/b01-conductor-api-audit-green-e3b48ef0`; no extra port is required.
- Hodge: the canonical H01 base already absorbs the exact variational/R3 chain including `frozen/hodge-r3-exact-variational-v10-72e61c07`; no extra port is required.

These recoveries do not decrement HARD counts. They remove duplicate work and narrow the uncovered mathematical delta. Any SOURCE item still requires build/kernel/axiom/semantic validation before promotion.
