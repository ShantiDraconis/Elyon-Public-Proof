# AGENT-01 — T1 PHYSICAL VERIFIER

Primary scope: the real P01 physical verifier implementation, especially P01FullVerifierPhysical.lean and its direct dependencies.

Mission: construct a concrete inhabitant of PhysicalVerifierRealization.

Close, using the repository's actual types and constructors:
- physical_execInstr_refines for every real EvalInstr constructor (input, const, neg, and, or);
- physical_runProgram_refines;
- physical_eq_logical_global;
- PhysicalVerifierRealization.

Reuse existing GREEN machinery for the physical stack, push/pop, witness shuttle, scanner, source/witness preservation, indexed witness reads, and certified head movements.

Do not encode formula/witness/index into finite control if the contract forbids that. Do not replace the physical machine with an abstract logical evaluator.

Iterate through build errors until the target compiles.

GREEN only if the concrete PhysicalVerifierRealization exists and the relevant Lean target builds without sorry/admit/new closure axioms.
