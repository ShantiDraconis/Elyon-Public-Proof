# Recovered prior closed-boundary formalization — audit import registry

Status: SOURCE RECOVERED / COMPATIBILITY AUDIT REQUIRED BEFORE PROOF REUSE

The new FINAL_FAIL triadic calculus was not the first occurrence of the
start/middle/final idea. A prior concrete formalization was recovered in
m-core-p-vs-np and is now pinned here as provenance for the current chain.

## P vs NP recovered source

Snapshot:
7abed94530d6f3f7272a12a6deadb15ba988f90a

Files/blobs:
- audit/ThreeTracks.lean — 63c9630d139cedc7807cf9213556c693fce5c809
- audit/EndpointCompression.lean — 41f18931c0d4f106067fc61200713903933164a7
- audit/PNP_THREE_TRACKS_SEMANTIC_AUDIT.json — 6d4d249cdb7ade11d6bb81a049dfdc922809c4a3
- lean/MCore/BackwardAudit/StartToMiddle.lean — acc837105be2a8131b4f29cc160be1800b02c9a2
- lean/MCore/BackwardAudit/FinalToMiddle.lean — 5dd4a273792dad9b7d77617224ae759a4e71f79e

Recovered concrete structure:
- equality start E0: NP subset P
- equality final EF: extensional P = NP
- separation start S0: exists L in NP outside P
- separation final SF: not EF
- quantitative middle start A0: C12 QuantitativeCore
- quantitative middle end AF: E0 or S0
- real open middle bridge: A0 -> AF
- proved wiring: E0 <-> EF under P subset NP
- proved wiring: S0 <-> SF under P subset NP
- conditional resolution: AF -> EF or SF

Recovered backward geometry:
- StartClosed -> MiddleClosed
- StartClosed -> FinalClosed envelope
- EqualityFinal -> discriminant
- SeparationFinal + StartClosed -> separation witness
- FinalClosed + StartClosed -> MiddleClosed
- bidirectional convergence around the same discriminant

This is materially stronger than the generic triad vocabulary because it
contains an existing concrete bidirectional start/final-to-middle construction.

## Other repositories

Exact-string searches for FINAL_FAIL/T-State did not recover equivalent named
files in Beal, Hodge, BSD, Riemann or Yang-Mills. This is NOT evidence of
absence: their terminal producer indexes explicitly catalog many frozen and
certified families, and BSD already contains a separate
Audit/Architecture/BSD_ThreeWorldClosure.md plus NumericClasses material.
Navier-Stokes contains a large earlier universal state-transition architecture
and final closure audits.

Therefore those sources remain LOCATE/COMPATIBILITY-AUDIT, not NOT_FOUND.

## Import rule

No recovered source is promoted merely because it predates the current files.
Reuse path:
LOCATED -> HASH_PINNED -> STATEMENT_CHECKED -> HYPOTHESES_CHECKED ->
QUANTIFIERS_CHECKED -> DOMAIN_CHECKED -> AXIOMS_CHECKED ->
CIRCULARITY_CHECKED -> SEMANTIC_FIDELITY_CHECKED -> RECOVER.

The P-vs-NP sources above are LOCATED + HASH_PINNED and now feed the audit.
