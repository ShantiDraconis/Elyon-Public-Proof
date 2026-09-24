# ATK Proof-Chain Evidence Registry

Status: AUDIT/PROVENANCE NODE — NO MATHEMATICAL PROMOTION
Policy: certified/frozen evidence is reusable only after exact semantic compatibility audit. Historical material is source/provenance, never an endpoint proof by title.

## Root control nodes

- M-Core recovery commit: `ac1f6e3f3ffb3c6e36c8c4f43ed21ee75ac3c4b9`
- `ATK_RECOVERY_INDEX.md` — blob `fa22b7ab09000d0cffc9d3c93234d4b4f9f14eda`
- `MCCS_STATUS.json` — blob `3d6b295ff270a543de9a4f61c5fe21b00de3e7b7`
- `GLOBAL_BACKWARD_ORACLE_ROLLOUT.md` — blob `6d1c390db9540f201a5bdb7d89642209ada7094b`
- frozen M-Core baseline: `frozen/mcore-v22-closed-system-green-43ee611a`
- scheduler state recorded in M-Core: `CROSS_CHAIN_CERTIFIED_REUSE`

## Forensic corpus nodes

Repository: `ShantiDraconis/navier-stokes-critical-barrier-audit`
Audited snapshot observed: `3da16d478f6a8a8fcd8486c43aef078dd69c5db7`

Machine-readable genealogy:
- `data/declaration_genealogy.csv` SHA256 `5e76141dbb8cb8f79aa81f40737bfb193af71ac3dabf9c1613fee2ec17f1c0ab`
- `data/declaration_edges.csv` SHA256 `bdce23aa4e682bf568cab38d5c9683a1c3a506b39ca24e7c72276ce5fc990cae`
- `data/declaration_nodes.csv` SHA256 `13b6170feec149855944b5758c64a8912d2d52485dae84338f966598cfb983d1`

Audit/index nodes:
- `audit/13_cross_repository_forensic_index.md`
- `audit/20_formal_corpus_commit_sweep.md`
- `audit/25_theorem_status_matrix.md`
- `audit/26_bridge_obligations.md`
- `reconstruction/ROOT_UNION_PROVENANCE.tsv`
- `reconstruction/ROOT_TREE_SHA256SUMS.txt`

Multiprover reconstruction artifacts (SHA256, not Git object SHA):
- BSD: `formal/millennium/lean/MillenniumAudit/Millennium/BSD.lean` — `12f736c46902f76343105f1f73705fa655767c322883964a2782880df7d5b5cf`
- Hodge: `.../Hodge.lean` — `cb009d8caf7c4a0e3cdfaf04c32cc270792d546b2b0adb8e0ce7b497d0ce2180`
- PvsNP: `.../PvsNP.lean` — `3b9e8833ea7f5df5db9380d933c4a8ee5e618af083a46593c80d8da5ef164939`
- Riemann: `.../Riemann.lean` — `24a6c365e92c7bdce64abf5edc926b55245b39da7fe6566fb5c562da50a80cc9`
- YangMills: `.../YangMills.lean` — `7a1f781d316f9414325ec038d82f3175dea082ed284881f9ecf59a5f436c28a8`
- NavierStokes: `.../NavierStokes.lean` — `1e9c6a0f028372f60683be88792c4f0a396e415690a70e09a2478b5fecb6d97d`

## BEAL chain node

Active repository: `ShantiDraconis/m-core-beal`
Certified evidence:
- K6: `CERTIFICATES/K6_GREEN_434d6b7.md`, SHA `434d6b7bba82298e7f90e13817f147011bef5b1e`, run `35092395821`
- K9: `CERTIFICATES/K9_GREEN_e3b8598.md`, frozen `frozen/k9-green-e3b8598`, SHA `e3b8598a2513b539b285dfb31dc383b770ab840f`
Reusable endpoint wiring: CommonDivisor -> prime divisor -> CommonPrime.
Terminal OPEN_MATH: derive a nontrivial common divisor from BealData. Frey/modularity/level-lowering material is candidate source only until locally discharged.

## HODGE chain node

Active repository: `ShantiDraconis/m-core-hodge`
Frozen provenance:
- `frozen/hodge-r3-relative-cycle-cut-v4-8ba37af1`
- `cert/hodge-r3-relative-cycle-cut-v4-8ba37af1-run35525478618`
R3a is historical certified provenance; do not reattack.
Terminal OPEN_MATH: arbitrary-codimension rational Hodge algebraicity/surjectivity.

## YANG-MILLS chain node

Active repository: `ShantiDraconis/m-core-yang-mills`
Reusable candidates:
- `HardenedPhysicalInterfaces.lean`
- `UniformIntegerClustering.lean`
- `K14ClusteringAdapter.lean`
Certified K21 provenance: SHA `0352c6afb7e9255bf0fc777269984a2def047080`, run `35170322803`, job `105040408850`, frozen `frozen-K21-green-0352c6af`, cert `cert/K21-0352c6af-run35170322803`.
Historical failproof: run `35518892629`, commit `490ff303` exposed trivial old physical interfaces; never reintroduce them.
Terminal OPEN_MATH: genuine 4D construction/reconstruction + physical Hilbert/spectrum identification + positive mass gap.

## RIEMANN chain node

Active repository: `ShantiDraconis/m-core-riemann`
K8 GREEN: SHA `ad3011f14bdab32161205e053fa925bc8c851ad4`, run `35565114760`, job `106225268018`.
Recover before new work:
- `research/r2/BackwardDenseEndpoint.lean`
- `RH/K9_RiemannHypothesis.lean`
Historical source nodes:
- `ShantiDraconis/millennium-riemann-I` commit `12a65e11b53d336b389b47e8fb85c0e75caaf762` — OPEN_GAP/OPEN_BRIDGE
- `ShantiDraconis/millennium-riemann-classical` commit `477a8d2b71e951619c830129909c03ce7a9ff615` — Rigidity Conjecture/Theorem 4.1 lineage, OPEN_GAP/OPEN_BRIDGE
Terminal OPEN_MATH: unconditional concrete DN vanishing/zero-residue estimate and exact DNLimit=0 <-> RH semantic bridge.

## P vs NP chain node

Active repository: `ShantiDraconis/m-core-p-vs-np`
Certified evidence:
- K7 certificate SHA `6b965e39dddffb23b407b6779c6241d2c6721997`, run `35135679032`, job `104927324853`
- C1 frozen/cert: `frozen/C1-ecdbb0b1`, `cert/C1-ecdbb0b1`
Recover:
- `audit/EndpointCompression.lean`
- `audit/repro_PNP.lean`
- `lean/MCore/BackwardAudit/OrientedWitnessBoundary.lean`
Terminal OPEN_MATH: fixed official-model language/witness with NP membership and genuine asymptotic non-membership in P.

## BSD chain node

Active repository: `ShantiDraconis/m-core-bsd`
Certified/frozen chain:
- K7 `14133a5e6fdda1105ba713cd5ab179445a2b967d`, run `35090484514`
- K8 `f9ef41dedaaf8c06790e1d586c59c45ad738b9c2`, run `35119169849`, frozen reproduction `35119838847`
- K9 `275ab2adf250dbd34748e338871ca6f5c48c2240`, run `35119889637`
- K10 `4dd63e4029b6c6c25160e292c317fb68f5db95d0`, run `35125385796`
- K11 `1742c7d2281b643bc65f7aa5ab842233cfde944e`, run `35133707891`
- K12 `dbecba6c8a777be2311d15a2e4c91f6e6edfc2c5`, run `35145483065`
- K13 `d0767baad8091c818e8c2f6af993ada9f6e1ef3f`, run `35145983298`
- K14 `c0d2f8219a572b586d1852091fa386252876f415`, run `35146322613`
- TOTAL certified SHA `d24472341ce161cbb49388ef5e1379ea36ac39b2`, run `35146718972`
These certify architecture/audit, not universal BSD.
Terminal OPEN_MATH: universal analytic-order = Mordell-Weil-rank, followed by universal leading-coefficient content.

## NAVIER-STOKES chain node

Active repository: `ShantiDraconis/navier-stokes-critical-barrier-audit`
Certified failproof: run `35565581964`, job `106226618089`.
Do not promote global workflow success when protected by continue-on-error.
Current analytic nodes:
- `formal/G1/DynamicCampanato.lean`
- `audit/76_stretchFar_signed_blocking.md`
- `audit/09_required_cancellations.md`
Terminal attack order:
1. CAN-2 exact cross-frequency interaction/control and a noncircular compensator/cancellation estimate.
2. signed far-field cancellation -> OPEN_CZ.
3. continue ActualNS -> XiEpsPDE -> signed depletion -> endpoint.

## Historical source repositories to inspect only when a concrete HARD requires them

- `ShantiDraconis/0-0-FORMAL-SUITE` — provenance baseline explicitly SOURCE_CATALOG_ONLY / NO_MATHEMATICAL_PROMOTION; historical commit `78083d5ae2924a46a67562c2551de39a06718143` is AXIOMATIC/FOUNDATIONAL, not classical endpoint proof.
- `ShantiDraconis/Universe-0-0`
- `ShantiDraconis/proofs-multiprover`
- `ShantiDraconis/universal-proof-hub`
- millennium problem repositories named in `GLOBAL_BACKWARD_ORACLE_ROLLOUT.md`
- `ShantiDraconis/-millennium-bsd-hodge-yangmills-I`

## Edge policy

Every evidence edge must be classified before it can enter an active proof chain:

`LOCATED -> HASH_PINNED -> STATEMENT_CHECKED -> HYPOTHESES_CHECKED -> QUANTIFIERS_CHECKED -> DOMAIN_CHECKED -> AXIOMS_CHECKED -> CIRCULARITY_CHECKED -> SEMANTIC_FIDELITY_CHECKED -> {RECOVER | ALREADY_ABSORBED | SUPERSEDED | INCOMPATIBLE}`

Only `RECOVER` can feed a current HARD, and cross-repository proof content must be ported/reproved locally.

## Global firewall

Required at promotion:
- SORRY_COUNT = 0
- ADMIT_COUNT = 0
- SORRYAX_COUNT = 0
- UNACCOUNTED_AXIOM_COUNT = 0
- UNACCOUNTED_CONSTANT_COUNT = 0
- UNRESOLVED_PLACEHOLDER = 0
- ORACLE_DEPENDENCY = 0
- CIRCULAR_DEPENDENCY = 0

No README/title/branch/workflow-success is mathematical evidence by itself.
