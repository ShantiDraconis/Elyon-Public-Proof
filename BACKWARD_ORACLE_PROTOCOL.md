# BACKWARD_ORACLE_PROTOCOL

Status: GLOBAL FAIL-CLOSED POLICY

This repository follows the same backward-oracle discipline used by the certified M-Core problem repositories.

## Per-endpoint rule

For every theorem/research endpoint T:

1. T must first exist as an explicit typed proposition/definition.
2. A hypothetical closure oracle may exist only in a dedicated specification module.
3. The oracle may be used to expose the exact witness/output required by T.
4. Every independent frontier/reproduction file must be forbidden from importing or mentioning the oracle.
5. If the final proposition is not yet typed, record TYPE_ENDPOINT_RESIDUE. Do not invent a surrogate endpoint.
6. Conditional wiring may compile GREEN without promoting the mathematical frontier.

## Global source/dependency accounting

Every certification-bearing source must count and classify:
- sorry
- admit
- sorryAx
- axiom
- constant / constants used as mathematical hypotheses
- wrappers equivalent to hidden placeholders
- external classical theorems
- open hypotheses passed as theorem arguments
- #print axioms dependencies

Closed-target defaults:
- SORRY_COUNT=0
- ADMIT_COUNT=0
- SORRYAX_COUNT=0
- UNACCOUNTED_AXIOM_COUNT=0
- UNACCOUNTED_CONSTANT_COUNT=0
- UNRESOLVED_PLACEHOLDER_COUNT=0

External classical results remain EXTERNAL_CLASSICAL / NOT_REPROVED_INTERNALLY unless a kernel-checked proof is present.

## A/B test

WITH_ORACLE:
- may expose the requested final witness/output;
- is specification-only evidence.

WITHOUT_ORACLE:
- must compile independently;
- must not import or mention the oracle;
- must leave every unresolved mathematical input explicit in theorem arguments or residue records.

A GREEN A/B test certifies the reduction/firewall, not the conjecture.

## Promotion firewall

Do not create a new K/stage merely because:
- an interface compiles,
- an oracle supplies the conclusion,
- a conditional composition is proved,
- an external theorem is cited,
- a residue is renamed.

A new stage is justified only by a genuine mathematical reduction or closure.

## Multi-endpoint repositories

This repository may contain several independent mathematical, linguistic, physical, or computational endpoints. The protocol is applied separately to each endpoint. No single artificial FINAL_STATEMENT may be manufactured to collapse unrelated targets.
