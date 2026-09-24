# AGENT-03 — T5-A1 BOUNDED EXECUTION

Mission: close BoundedExecCorrectness without rewriting already-GREEN sublemmas.

Inspect current code and close only the remaining real residue, including as applicable:
- LEFT transition and border cases;
- RIGHT transition and border cases;
- tape-radius bounds;
- snapshot preservation;
- executionAssignment;
- state/head/left/right consistency;
- induction over the bounded execution;
- final acceptance soundness.

Reuse existing injectivity/disjointness/membership/transition-case proofs and preservation lemmas already present.

GREEN only if the terminal bounded-execution theorem compiles with no artificial assumptions, sorry, admit, or closure axiom.
