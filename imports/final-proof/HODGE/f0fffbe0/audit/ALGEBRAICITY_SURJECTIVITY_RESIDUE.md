# ALGEBRAICITY_SURJECTIVITY_RESIDUE

Repository: `ShantiDraconis/m-core-hodge`  
Branch: `frontier/algebraicity-20260918`  
Frozen base: `b23d0bce1bfd2af12d787cbd515a2d8355de9380`  
Audited source head: `2a0990cc11e6851f4b454c976ca02025486850e0`  
Mode: `SOURCE_CATALOG_ONLY`  
Promotion: `NO_MATHEMATICAL_PROMOTION`

## REPRODUCTION_VERDICT

`TARGET_CERTIFICATE = NOT_EMITTED`

The literal endpoint reproduces only conditionally from the frozen sources.
K26 gives

[
GradedRationalHodgeConjecture(G)
leftrightarrow
ConcreteAlgebraicityPayload(M)
]

after an explicit `HodgeCertificationBoundary G M` is supplied.

The current Spread/Variational route composes successfully only after the
residues below are passed as explicit hypotheses.

## HYPOTHESIS_RESIDUE

### R0 — concrete formal boundary

The repository still requires a concrete implementation of the semantic
boundary:

- rational cohomology carrier,
- algebraic-cycle carrier,
- cycle-class map,
- rational finite-span adapter,
- cycle-class Hodge-type soundness.

This is a formalization/interface residue. It is not the general mathematical
Hodge conjecture, but it must be instantiated before a public end-to-end
formal theorem can refer to actual complex varieties rather than abstract
carriers.

### R1 — uniform spread construction

For every endpoint input

[
(X,p,alpha),qquad
X 	ext{smooth projective},quad
alphain H^{2p}(X,mathbf Q)cap H^{p,p},
]

construct a suitable family/spread and transported class with every dependency
explicit. The current `C_Spread` is only

`spreadExists AND spreadDefinedOverQbar`

inside an abstract vocabulary; it does not bind the spread to `X,p,alpha`.

### R2 — spread produces an algebraic point

Prove, with exact hypotheses,

[
C_{Spread}	o
	ext{hasAlgebraicPointOnHodgeLocus}.
]

No theorem in the frozen source proves this implication.

Cattani–Deligne–Kaplan proves algebraicity of the Hodge locus under the
polarized-variation / smooth-projective-family hypotheses; it does not assert
the existence of a point where the transported Hodge class is represented by
an algebraic cycle.

Reference: E. Cattani, P. Deligne, A. Kaplan, *On the locus of Hodge classes*,
J. Amer. Math. Soc. 8 (1995), no. 2, 483–506,
DOI 10.1090/S0894-0347-1995-1273413-2, Theorem 1.1 / Corollary 1.2.

### R3 — specialization / variational algebraicity

Prove, with exact family and transport hypotheses,

[
	ext{hasAlgebraicPointOnHodgeLocus}
	o
ConcreteAlgebraicityPayload(M).
]

The current Lean theorem
`variational_to_payload_given_specialization` does not prove this geometry;
it takes this arrow as an argument.

A single algebraic fiber plus algebraicity of the Hodge locus is not presently
a general theorem that every ordinary Hodge class on all fibers is algebraic.
Deligne's Principle B transports **absolute Hodge** classes in connected smooth
projective families; it is not a general algebraicity-specialization theorem
for arbitrary Hodge classes.

## QUANTIFIER_RESIDUE

The endpoint has the order

[
orall X;orall p;orallalpha,quad
(	ext{smooth projective}wedge(p,p))
Rightarrow
exists	ext{ finite rational cycle combination}.
]

A valid spread route must preserve the dependency order

[
orall X;orall p;orallalpha;
exists S,mathcal X,y,ldots
]

with the chosen spread and point allowed to depend on `X,p,alpha`.

The present abstract candidate vocabulary contains unindexed propositions and
therefore does not yet certify this `forall-exists` dependency. In
particular, an existential family or algebraic point may not be moved outside
the universal endpoint quantifiers.

## SCALING_RESIDUE

`NOT_APPLICABLE`

This endpoint is algebraic-geometric; there is no analytic critical-scaling
parameter to match.

## CONSTANT_RESIDUE

`NOT_APPLICABLE`

No numerical constant is part of the endpoint or the current candidate
factorization.

## AXIOM_AUDIT

Internal frozen wiring:

- K26: passed.
- FinalAttack: passed.
- CandidateBridge: passed.
- Source hygiene: passed.
- Dense candidate firewall: passed.
- Clean reproduction at run `35298459729`: passed.

The internal composition theorems print with no additional axioms.

External mathematics:

- CDK Hodge-locus theorem: **not yet imported/formalized as a Lean proof term**.
- Deligne Principle B: **not yet imported/formalized as a Lean proof term**.
- R1, R2 and R3: **no Lean proof terms in the frozen source**.

## CIRCULARITY_RESIDUE

No circular closure is accepted.

If a candidate `C` is supplied with both

[
ConcreteAlgebraicityPayload	o C
quad	ext{and}quad
C	o ConcreteAlgebraicityPayload,
]

then K26/FinalAttack mechanically identifies it with the endpoint at the
certified boundary. Such a candidate is a reformulation, not a reduction.

## MINIMAL_CURRENT_CUT

At the certified endpoint level:

[
oxed{ConcreteAlgebraicityPayload(M)}
]

At the current Spread/Variational factorization level:

[
oxed{
R1;+;R2;+;R3
Longrightarrow
ConcreteAlgebraicityPayload
Longrightarrow
Hodge
}
]

No `K27` is created by this audit.
`HODGE_PROVED=false`.
`may_export_proof=false`.
