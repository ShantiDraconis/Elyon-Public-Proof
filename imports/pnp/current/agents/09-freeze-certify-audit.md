# AGENT-09 — FREEZE / CERTIFY / AUDIT

This agent validates; it does not invent mathematics.

For each candidate GREEN SHA:
1. verify the relevant Lean build/kernel target;
2. run repository hygiene checks;
3. reject sorry/admit/sorryAx/prohibited new axioms;
4. verify SHA and workflow/run evidence;
5. verify provenance and manifest consistency;
6. generate/update freeze/certificate metadata only after successful verification;
7. update hashes/root fields only when contractually applicable.

State progression:
SOURCE -> BUILD_PENDING -> GREEN -> FROZEN -> CERTIFIED

Never certify RED, unverified, stale, or OPEN_MATH artifacts.
