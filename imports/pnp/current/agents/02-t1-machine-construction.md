# AGENT-02 — T1 MACHINE CONSTRUCTION

Dependency: AGENT-01 result.

Mission: close the actual P01 integrated machine and no-hypothesis construction.

Construct and prove, using real repository definitions:
- fullVerifierCert;
- halts_global;
- time_poly;
- blank_none;
- P01MachineConstruction;
- p01_closed_no_hypothesis.

Composition must come from the real parser -> witness-preserving machine -> physical full verifier pipeline. Derive state counts/time bounds from actual composition; do not invent constants merely to satisfy fields.

Preserve already-certified parser/leaf/terminal/phase work.

GREEN only when P01MachineConstruction and p01_closed_no_hypothesis compile in the kernel with no prohibited axioms. Then leave evidence suitable for freeze/certification.
