# GLOBAL_BACKWARD_ORACLE_ROLLOUT

Date: 2026-09-18
Policy: FAIL_CLOSED / NO_MATHEMATICAL_PROMOTION

## Enforcement levels

- A_B_ENFORCED: typed endpoint + isolated hypothetical oracle + independent without-oracle frontier + CI source/dependency gate.
- TYPE_ENDPOINT_FIREWALL: repository does not yet contain a proposition faithful to the official endpoint; CI forbids manufacturing an oracle before the endpoint type exists.
- PROTOCOL_ONLY: repository/hub adopts the global policy, but no endpoint-specific A/B certificate is claimed here.
- PENDING_CI: code/gate installed; final workflow result not yet green.

## Primary formal cores

| Repository | Enforcement | HEAD / evidence | Run | Job | Scientific status |
|---|---|---|---|---|---|
| m-core-hodge | A_B_ENFORCED | e4afb8a4d6cdebbc9fc5af991129b89fc0fb57b0 | 35326123205 | 105539457418 | OPEN: R1/R2/R3 residues remain |
| m-core-beal | A_B_ENFORCED | 88ca1d0d692255cfb8d23207e3f84a6cf6768b86 | 35331422404 | 105556401691 | OPEN: common-prime witness not manufactured |
| m-core-bsd | A_B_ENFORCED (RANK PART ONLY) | ac1cf65a1f52d4f8ccb09023d86025fc2a0a1f27 | 35331431961 | 105556430370 | OPEN: this is not full BSD |
| m-core-p-vs-np | A_B_ENFORCED | 0fb6b7f59ba7ed299d69cbf6a6011165c3f56c66 | 35331443272 | 105556465123 | OPEN: separation witness not manufactured |
| m-core-riemann | TYPE_ENDPOINT_FIREWALL | b1b776904e0673b180daa8c5b1e0fbd994aa39f5 | 35331528549 | 105556733411 | OPEN: final RH proposition not yet typed in this core |
| m-core-yang-mills | TYPE_ENDPOINT_FIREWALL | e9dba44f8a115981326f8a144f50cb7a064b1522 | 35331595729 | 105556945630 | OPEN: final YM proposition not yet typed in this core |
| navier-stokes-critical-barrier-audit | PENDING_CI | ac43cc7f6032d2209cb8b5ef2a174255573b43d8 | 35332070931 | pending | OPEN: ActualNS -> independent closure contract remains open |

## Protocol-adoption repositories / hubs

The following repositories have the global backward-oracle protocol committed, without an endpoint-specific proof claim:

- 0-0-FORMAL-SUITE
- harappan-unified-audit-
- M-Core
- Millennium
- 0-0
- Universe-0-0
- harappan-00-universal
- harappan-universal-dictionary
- millennium-bsd
- millennium-hodge
- millennium-mass-gap-I
- millennium-navier-stokes-I
- millennium-p-vs-np-I
- millennium-poincare-symbolic
- millennium-regularity-I
- millennium-riemann-I
- millennium-symbolic-program
- millennium-yang-mills
- proof-engineering-00
- proofs-multiprover
- -millennium-bsd-hodge-yangmills-I
- millennium-engineering-00
- universal-proof-hub
- zeta-i-formal.lean
- m-core-openai-ns-audit
- Millenium--core
- mishkan-iii-core

## Global invariant

A hypothetical oracle may reveal the target witness, but its dependency is forbidden in every independent frontier proof. A GREEN reduction test does not prove the underlying conjecture.

Closed-target source defaults:
SORRY_COUNT=0
ADMIT_COUNT=0
SORRYAX_COUNT=0
UNACCOUNTED_AXIOM_COUNT=0
UNACCOUNTED_CONSTANT_COUNT=0
UNRESOLVED_PLACEHOLDER_COUNT=0

Historical/frozen branches and preservation snapshots are not rewritten by this rollout.
