# FINAL_ROOT — scope-separated status

Audit update: 2026-11-22. This is a **source-level status reconciliation**, not a new Lean build, kernel certificate, or independent review.

## Repository-local seven-claim endpoint

- INTERNAL_CLAIM1_TO7: ISSUED_SEALED_PENDING_REVALIDATION (seven claims at `canonicalSevenEndpoint`; historical kernel SUCCESS run 36048534795)
- INTERNAL_FINAL_PROOF_ALIAS: ISSUED_SEALED_PENDING_REVALIDATION (Lean `canonicalFinalProof : FINAL_PROOF`, where `FINAL_PROOF := FINAL_ROOT := EXTERNAL_CERTIFICATE := Claim1To7Evidence canonicalSevenEndpoint`)
- INTERNAL_RELEASE_AUDIT: RECORDED_GREEN (release run 36050478168, audit run 36049892790; as recorded in `public/EXTERNAL_CERTIFICATE_COMPLETE.json`)
- INTERNAL_LIVE_REBUILD: NOT_RUN_IN_THIS_AUDIT
- INTERNAL_CERTIFICATE_SOURCE: `certs/elyon_claim1_7_only/FINAL_ISSUANCE.json`

The alias is a repository-local proposition. It is **not** an assertion of any Millennium Prize Problem.

## External mathematical endpoint

- EXTERNAL_MILLENNIUM_BRIDGE: OPEN_MATH
- EXTERNAL_CERTIFICATE_ISSUED: false
- GLOBAL_FINAL_ROOT: NOT_ISSUED
- GLOBAL_FINAL_PROOF: NOT_CERTIFIED
- FINAL_FAIL: NOT_APPLICABLE_TO_THEOREM_TRUTH (a failed attempt is not a proof of theorem falsity)
- BYPASS: NONE

The external bridge must establish the exact standard mathematical statement, including generality, domains, hypotheses, quantifiers, and reduction fidelity. A concrete specialized endpoint alone does not satisfy it.

## Historical source-certificate references (not rechecked here)

- 1b7ce6f8 | CERTIFICATE GREEN | run 35299976127
- 24464291 | CERTIFICATE GREEN | run 35933273458
- f0a9fcd1 | CERTIFICATE GREEN | run 35933482419
- 519e6868 | CERTIFICATE GREEN | run 35946858187
- 003dd377 | CERTIFICATE GREEN | run 35956572473
- 7732c120 | CERTIFICATE GREEN | run 35957549250
- 45bf2597 | CERTIFICATE GREEN | run 35957582309

See `lean/MCore/Real/Claim1To7Only.lean`, `lean/MCore/Real/BridgeSeven.lean`, `SCOPE_AND_LIMITATIONS.md`, and `FINAL_CLOSURE_REPORT.md` (historical snapshot).
