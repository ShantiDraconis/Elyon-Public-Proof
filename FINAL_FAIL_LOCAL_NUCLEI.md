# Local rigid nuclei and Beal-like behavior

The model is refined: Beal is not a universal nucleus shared literally by all
problems. Every problem has its own LocalRigidNucleus.

The common Beal-like pattern is structural:

ambient object -> isolate primitive/core obstruction -> endpoint closure iff
that local obstruction is eliminated.

A BealBehaviorEquivalence is intentionally strong. It requires an actual
bijection between ambient objects plus preservation of obstruction and closure.
Only under such a proved equivalence may the Beal-like elimination law be
transported to another problem.

NucleusFamily gives every indexed problem its own nucleus. BealModeledFamily
requires a separate equivalence proof for every member. Therefore the framework
can test the hypothesis that all seven chains exhibit the same abstract
compression/elimination behavior without asserting it in advance.

For concrete Millennium/Beal repositories, the next step is to instantiate
local nuclei from their actual terminal HARD statements. If exact equivalence
is too strong, the failed field identifies which weaker morphism/category is
mathematically appropriate.
