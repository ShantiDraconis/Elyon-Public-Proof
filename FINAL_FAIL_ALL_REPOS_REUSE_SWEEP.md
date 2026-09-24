# FINAL_FAIL — all-repository reuse sweep

Status: RECOVERED CANDIDATES / ORIGINALS UNCHANGED / NO ENDPOINT PROMOTION

This sweep searched the installed ShantiDraconis repositories for artifacts that
can reduce the eight pinned deltas. Every item below remains in its original
repository. M-Core records only provenance and admissible reuse strength.

## High-value recovered candidates

### RH — lc-rh-coercivity

Repository snapshot:
ShantiDraconis/lc-rh-coercivity @ 5283a63651a53c57fc3e8d11972f2169e38de3c6

Pinned files:
- spec/interface/theorems.yaml
  blob 4613c243d960d2c77309339ecd27b7e215f3e8e8
- spec/interface/axiom_gates/gates.yaml
  blob 96f4a6ad93044ebfb99f9ca94e96b959969bac01

Recovered theorem interface:
- Contradiction_lemma — status kernel
- LC_implies_RH — status kernel
- WEF_gate — status axiom_gate

Exact uncovered delta after reuse:
prove/discharge the operational Weil Explicit Formula gate and prove a
compatibility morphism from the current concrete DNLimit endpoint to the LC
coercivity interface. LC_implies_RH cannot be used as an unconditional RH
producer while WEF_gate remains an axiom gate.

Classification: STRONG REDUCTION CANDIDATE / NOT ENDPOINT PRODUCER YET.

### HODGE — millennium-hodge-classical

Snapshot:
ShantiDraconis/millennium-hodge-classical @
63d59b2c49c25d98d25ae462a57fe79cae26adfc

Pinned:
lean/src/Hodge/Cycles/AlgebraicCyclesClassical.lean
blob 33b89ebac421311ba951914f8edc08a26901ac91

docs/known-cases.md
blob 435f7e1dbeb1de33f15ec3b947723711618d3312

Important firewall result:
the Lean classical file contains semantic placeholders such as predicates
defined as True, theorems proving True by trivial, and an explicit
standardConjectureD axiom. It must NOT be imported as a producer for general
algebraicity.

Useful material:
definitions/cycle-class vocabulary and the documented known-case partition
(codimension 0/n, Lefschetz (1,1), surfaces, selected special families).
These can be used to split the Hodge delta into CLOSED_KNOWN_CASES versus
GENERAL_OPEN_COMPLEMENT, but only after theorem-level implementations of those
known cases are independently verified.

Classification: DOMAIN DECOMPOSITION / DEFINITIONS; GENERAL PRODUCER REJECTED.

### YANG-MILLS — millennium-yang-mills-classical

Snapshot:
ShantiDraconis/millennium-yang-mills-classical @
07e24c86764122c8fc827548cb9614e4d7df06f2

Pinned:
docs/verification-framework.md
blob 21faad3b4f0439495ed08b79088cfc92efefdab5

The repository explicitly classifies as assumed:
- existence of the continuum limit;
- preservation of OS axioms in the limit;
- existence of the mass gap.

Search also locates sorry-bearing Lean reconstruction, OS, Hamiltonian,
Schwinger and Lie-algebra modules, and axiom-bearing Coq mass-gap modules.

Useful material:
precise decomposition of the YM delta into continuum construction,
OS/reflection positivity preservation, reconstruction/Hamiltonian and mass-gap
identification.

Classification: GAP DECOMPOSITION / NEGATIVE CONTROL; NOT PRODUCER.

### Indeterminate collapse — indeterminate-collapse-core

Snapshot:
ShantiDraconis/indeterminate-collapse-core @
c2faccb496e6f2023be7706ee261e9d17af5a159

Pinned:
formal_attempts/lean/IndeterminateCollapse.lean
blob f480a0d8b3cdbb7edaec67d50e8c2f20dfbec2e1

The file self-identifies as proof-of-concept, with axioms and sorry.
It contains a useful typed Known|I model, collapse interface and explicit
limitations, but its idempotence theorem is sorry and invariance is axiomatic.

Therefore the previously recovered certified Phi3 core remains the canonical
producer. This older repository is useful as genealogy and a negative-control
comparison only.

Classification: HISTORICAL SPECIFICATION / AXIOMATIC / NOT PRODUCER.

### Structural residue / fibers — universal-emergent-logic-

Snapshot:
ShantiDraconis/universal-emergent-logic- @
041a2090e226310380ee3297d5abef5a51801265

Pinned:
formalization/lean/LRE/Basic.lean
blob c83fdcd41eedff72665ba8157232512ab2a9a577

Recovered useful definitions:
- Projection C D
- Fiber as preimage of projection
- Section as right inverse
- Residue living in a fiber
- residueNorm as information-loss coordinate

Firewall:
the file also contains explicit LRE axioms, True placeholders and at least one
sorry in the obstruction theorem. Hence only axiom-free definitions and
elementary proved lemmas may be ported after compatibility audit.

Potential FINAL_FAIL reuse:
replace String-only descriptions of kerC/Fib/section with actual typed
projection/fiber definitions, while refusing the LRE axioms.

Classification: PARTIAL STRUCTURAL REUSE / THEOREM-BY-THEOREM AUDIT.

### POINCARE — millennium-poincare-symbolic

Snapshot:
ShantiDraconis/millennium-poincare-symbolic @
ec0331839e5a58a3ececaf4d914214c645b6b912

Pinned:
BACKWARD_ORACLE_PROTOCOL.md
blob a304712a083dcf1d6c6ab0e8564985ba62bf664c

Recovered value:
a mature fail-closed protocol already requires typed endpoints, oracle isolation,
WITHOUT_ORACLE frontier exposure, zero sorry/admit/sorryAx/unaccounted axioms,
and states that GREEN wiring is not endpoint proof.

No complete theorem-level Perelman/Ricci-surgery chain was located in this
repository by the current sweep.

Classification: POSITIVE-CONTROL AUDIT PROTOCOL / FORMAL PROOF IMPORT STILL OPEN.

## Other repositories checked / useful signals

- millennium-p-vs-np-classical: contains classical proof architecture, but the
  current m-core PNP endpoint consumer and recovered ThreeTracks/EndpointCompression
  remain stronger fail-closed anchors. Any classical file must be scanned for
  axiom/sorry/finite-to-universal shortcuts before reuse.
- millennium-birch-swinnerton-dyer-classical: contains rank-zero/conditional
  theorem infrastructure and explicit analytic-rank specifications, but also
  axiom-bearing analytic continuation/specification layers. Useful for splitting
  known conditional/rank-specific cases, not universal BSD rank equality.
- millennium-navier-stokes-classical, navier-stokes-noncircular: no stronger
  indexed hit was found for the exact independent-compensator + signed OPEN_CZ
  producer. Current audit/09 + audit/76 remain the strongest pinned exact frontier.
- millennium-riemann-classical, Riemann-unity-zero, riemann-indeterminacy:
  no indexed artifact found in this sweep that supersedes the current K8
  concrete DN endpoint. lc-rh-coercivity is the new strongest adjacent route.
- horizon-prime---framework: no theorem-level indexed hit in this sweep that
  proves compatibility with DNLimit or another exact delta. Keep auxiliary.

## Delta changes produced by this sweep

BEAL:
  unchanged — no verified producer located.

POINCARE:
  audit protocol strengthened; formal known-proof import still missing.

NAVIER_STOKES:
  unchanged exact mathematical delta; no legitimate independent compensator found.

HODGE:
  delta can be partitioned by known domains, but general algebraicity remains open.

P_VS_NP:
  current m-core/recovered ThreeTracks chain remains strongest.

BSD:
  conditional/rank-specific historical material available; universal equality remains open.

RIEMANN:
  NEW ADJACENT ROUTE:
  DN endpoint -> compatibility with LC coercivity -> LC_implies_RH,
  with WEF_gate explicitly exposed. This is a genuine smaller interface target,
  not a proof of RH.

YANG_MILLS:
  exact missing blocks independently confirmed by older classical repository;
  no endpoint producer recovered.

## Reuse rule

Only port a declaration if all of:
statement, hypotheses, quantifiers, domain, constants, dependencies, axioms,
circularity, semantic fidelity and source SHA match the target use.

Original mutation count remains zero.
