# ATK HARD Chain Index

Status: CANONICAL LINK MAP
Date: 2026-09-21
Source of truth for HARD accounting: `MCCS_STATUS.json`.

## Global accounting

- HARD composite remaining: **10**
- HARD atomic remaining: **11**
- Total tracked HARD obligations: **21**
- Material producer slots: **8**
- Terminal certificates: **7/7 GREEN_FROZEN**
- Canonical HARD bases: **7/7 GREEN_FROZEN incorporated**
- FINAL_PROOF: **0/7**
- Closed-center HARD foundation: **GREEN_FROZEN**
  - source: `c3910589cd1865b4adfbe790938a1e77884ebfcd`
  - run: `35652843838`
  - frozen: `frozen/final-fail-closed-center-hard-ee1ec8fb`
  - certificate SHA256: `9d3a64ba4af8deedf66757dd723ec5173b6d17649483d1b86fe90bc18a769747`
- Progress metric: `FROZEN_HARD/TOTAL_HARD`
- Frozen prefixes do **not** decrement the historical HARD counters until the corresponding HARD producer itself closes.



## Closed-center HARD foundation

The canonical proof architecture now includes a kernel-certified bidirectional triad:

```text
advance: START  -> CENTER -> FINISH
return:  START <- CENTER <- FINISH
```

The unlabeled transition relation has two admissible continuations at CENTER. This
is a formal non-uniqueness of continuation, not a numerical definition of 0/0.

For a concrete HARD, closure is conditional on proving all four semantic maps:

```text
Start  -> Center
Center -> Start
Center -> Finish
Finish -> Center
```

Once these four maps are supplied, Lean proves `Start ↔ Center`,
`Center ↔ Finish`, and `Start ↔ Finish`. The architecture does not manufacture
the maps and therefore does not reduce any OPEN_MATH count by itself.

## Canonical HARD bases incorporated

| Chain | Canonical GREEN_FROZEN base | SHA | Uncovered HARD delta |
|---|---|---|---|
| RH | `frozen/vanishing-upper-bound-green-5c66f8dc` | `5c66f8dca03834f24a61a9b1219e7af9d4892dd6` | unconditional BCF/zero-residue control yielding `VanishingUpperBound` |
| BEAL | `frozen/b01-conductor-level-interface-green-b6667e63` | `b6667e63a2c28c32cee0ab17714f9d772a0b4768` | exact local conductor exponent + exact lowered level → universal `CommonPrime` |
| NS | `frozen/prefix-n01-uniformity-b7caecc2` | `b7caecc2db571679af4b6ee64829253dcd97cea2` | uniform parameter-independent signed depletion from `ActualNS` |
| PNP | `frozen/material-orientation-green-969408f2` | `969408f2d84121667319da04680893dd2978e9a6` | construct genuine `MaterialOrientation` |
| BSD | `frozen/d01-universal-firewall-v2-green-c1e7b245` | `c1e7b245726c4c65f5f9f878acefb86460746f4a` | realizable elliptic-curve domain + rank equality + refined formula |
| HODGE | `frozen/h01-minimal-forward-payload-green-42eaf7d4` | `42eaf7d4d639871f82eceb121ee525a6c4f30d84` | construct `H01MinimalForwardPayload` universally |
| YM | `frozen/prefix-y01-b3b5-hardening-cd4bbfd` | `cd4bbfd348b607bd24ed0c6d605207b764286f58` | B6 genuine 4D realization + IR/limit + spectral transfer |

These seven SHAs are now the canonical reusable HARD bases. Older weaker heads remain provenance only and must not be used as the default continuation point.

## Exact 21-HARD queue

| Repo | Composite | Atomic | Active chain |
|---|---:|---:|---|
| m-core-beal | 2 | 2 | B01_CONDUCTOR_EXACT_LEVEL → B02_RESIDUAL_ELIMINATION |
| navier-stokes-critical-barrier-audit | 2 | 2 | N01_SIGNED_DEPLETION → N02_ENDPOINT_REGULARITY |
| m-core-riemann | 1 | 1 | R01_ZERO_RESIDUE_DNLIMIT |
| m-core-hodge | 1 | 1 | H01_GENERAL_ALGEBRAICITY |
| m-core-yang-mills | 1 | 1 | Y01_4D_IR_CLUSTERING_GAP |
| m-core-p-vs-np | 2 | 2 | P01_SAT_OPERATIONAL_NTM → P02_SAT_NOT_IN_P |
| m-core-bsd | 1 | 2 | D01_RANK + D01_REFINED_LEADING_SHA → D01_COMPOSITE |

Totals: 10 composite + 11 atomic = 21.

## Compressed producer queue

1. **RH-P1** — construct unconditional BCF/zero-residue control. Reuse the frozen theorem `VanishingUpperBound → DNToZero → DNLimit=0`.
2. **BEAL-P1** — derive exact conductor exponent/lowered level and close the remaining universal `CommonPrime` families.
3. **HODGE-P1** — construct the certified minimal forward payload for every rational Hodge class.
4. **YM-P1** — construct B6: genuine 4D physical realization, continuum/IR control, and spectral transfer yielding a positive gap.
5. **PNP-P1** — construct a material orientation: either a genuine polynomial SAT route or a genuine lower-bound witness.
6. **BSD-P1** — prove universal rank equality on realizable elliptic-curve data.
7. **BSD-P2** — prove the refined leading-coefficient/regulator/height/Ш identity on the same realizable domain.
8. **NS-P1** — derive a single positive parameter-independent signed-depletion constant from `ActualNS`.

## Scheduling

- Never restart from a weaker historical head when a compatible canonical GREEN_FROZEN base exists.
- Never rerun a frozen compatible prefix.
- Run independent producers in parallel.
- On GREEN producer: compatibility audit → certificate → SHA256 → freeze → discharge linked consumers → decrement HARD ledger.
- On RED_INFRA: repair and rerun the same producer.
- On RED_MATH: isolate the smallest noncircular missing lemma and preserve every prior GREEN artifact.
- Numerical evidence can guide an attack but cannot close a universal producer.

## Fail-closed rule

This index incorporates certified prefixes; it does not promote unresolved mathematics. A HARD closes only after the exact producer is kernel-checked with zero `sorry`, zero `admit`, no hidden oracle/axiom, no circularity, no trivial witness, and no semantic weakening.


## Parallel M-Core formulation track

M-Core itself now advances in parallel with the seven FINAL-PROOF chains.

- Track: `CORE_FORMULATION`
- Base: `e6bcc70441797e7c2b371bff1a473be19a5663a4`
- Active branch: `attack/mcore-formulation-v2-clean-20260921`
- Active SOURCE head: `0d999a1d2580adac0c59688d8d38c01c82838a3c`
- Kernel state: `BUILD_PENDING`
- Endpoint credit: **0** — this track never counts as a Millennium proof by itself.
- HARD-counter effect: **0** — the historical 10 composite + 11 atomic obligations are unchanged.

Current formulation delta:

1. `ClosedCenterHard` remains the frozen START ↔ CENTER ↔ FINISH semantic foundation.
2. `RelationalCenterBridge` identifies, under an explicit admissible identity branch,
   `RelationalHardAtom.FailAt` with `FundamentalIndeterminacy` and `IFail`.
3. `DeterminedAt` is identified with `CenterDetermined` on the same induced center.
4. `Master.lean` is repaired to use the relational HARD core directly rather than a dangling `BrainKernel` import.
5. The next formulation gate is relation-level HARD closure: state the exact totality/single-valuedness hypotheses under which relational arrows induce the four `ClosedCenterHard` maps without destroying genuine branch multiplicity.
6. After that, recovered numeric/Phi3 indeterminacy may connect to structural `IFail` only through an explicit typed adapter theorem; there is no definitional identification of numeric 0/0 with structural branching.

The formulation track is governed by the same fail-closed rules: no `sorry`, no `admit`, no hidden axiom/oracle, no endpoint promotion, and no semantic weakening.


### PNP/P01 canonical operational frontier — current cut

The P01 target is not an abstract witness relation anymore. The following are already available/reused:
- canonical Circuit bit encoding;
- finite SAT witness semantics;
- verified witness correctness;
- short-witness bound;
- verified SATBits relation;
- finite tag/unary parser fragments;
- frame-stack source implementation.

The remaining P01 HARD is to compile that relation into the repository's hardened machine model:
`PolyNTMRealization (SATBits circuitBitEncoding)` with finite control `Fin (n+1)`, alphabet `Option Bool`, canonical input tape, polynomial runtime and exact soundness/completeness.

Rejected shortcut:
- `copilot/worksat-realization-foundations/lean/MCore/Real/SATRealization.lean` is not compatible with the hardened canonical model because it embeds arbitrary CNF values in machine states and `String/List Bool` values in tape symbols. It is provenance/negative control only, not a P01 producer.

Active clean P01 head: `0c89ecaca4449e1b551970a13a38f4e4d3d55a9a`.
