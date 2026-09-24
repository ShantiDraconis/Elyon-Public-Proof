# R2 — zero-residue obstruction audit

Status: **OPEN_MATH boundary audit**.

Repository: `ShantiDraconis/m-core-riemann`  
Branch: `research/r2-dnlimit-zero`

This note explains why the BCF zero-residue term must remain one mathematical
frontier rather than being split into artificial “technical” gates.

## 1. Unconditional BCF identity

For the linear Riesz–Möbius polynomial

[
V_N(s)=sum_{nle N}left(1-\frac{log n}{log N}\right)\frac{mu(n)}{n^s},
]

Bettin–Conrey–Farmer Lemma 2 gives unconditionally

[
1-zeta(s)V_N(s)
=
\frac1{log N}
left[
\frac{zeta'}{zeta}(s)
-zeta(s)sum_\rho R_N(\rho,s)
-zeta(s)F_s(1/N)
\right],
]

where

[
R_N(\rho,s)=
operatorname{Res}_{z=\rho}
\frac{N^{z-s}}{zeta(z)(z-s)^2}.
]

For a simple zero (\rho),

[
R_N(\rho,s)
=
\frac{N^{\rho-s}}
{zeta'(\rho)(\rho-s)^2}.
]

Thus a zero (\rho=sigma+igamma) with (sigma>1/2), evaluated near the
critical line, carries the explicit growth scale

[
|N^{\rho-s}|asymp N^{sigma-1/2}.
]

This does not by itself prove a lower bound because different residue terms can
interfere, but it identifies exactly where an off-critical zero enters the
candidate error.

## 2. Published off-critical-zero stress test

Helmut Maier and Michael Th. Rassias,
*On the Size of an Expression in the Nyman–Beurling–Báez–Duarte Criterion for
the Riemann Hypothesis*, Canadian Mathematical Bulletin 61 (2018), 622–627,
DOI 10.4153/CMB-2017-070-3, analyze the same (V_N).

Under the model assumption that there is exactly one nontrivial off-critical
quadruplet

[
sigma_0pm igamma_0,qquad 1-sigma_0pm igamma_0,
qquad sigma_0>1/2,
]

plus a discrete (1/|zeta'(\rho)|^2) growth hypothesis, their Theorem 1.1
obtains a main scale

[
\frac{N^{2sigma_0-1}}{(log N)^2}
left[
Acos(2gamma_0log N)
+Bsin(2gamma_0log N)
+C
\right]
]

up to a relative error of order
(N^{1/2-sigma_0+\varepsilon}).

Classification here:

[
\texttt{CONDITIONAL_OFF_CRITICAL_OBSTRUCTION_MODEL}.
]

It is not an unconditional theorem about the actual zeta zero set. Its value
for this audit is structural: it confirms that the BCF residue decomposition
does not hide off-critical zeros inside a harmless remainder.

## 3. Consequence for gate architecture

The R2 endpoint is already equivalent to RH through the certified R1
interface. Therefore a bound strong enough to prove

[
|1-zeta V_N|^2_{mathrm{Mellin}}\to0
]

cannot be expected to emerge from a routine estimate that remains agnostic
about off-critical zeros.

The repository must not turn the following into a chain of apparently
independent easy gates:

- bound each residue;
- sum residues;
- remove off-critical contribution;
- conclude vanishing.

The third item already contains the essential RH obstruction.

The correct minimal DAG is therefore still

[
\text{BCF Lemma 2 (external, unconditional)}
longrightarrow
\boxed{\texttt{ZERO_RESIDUE_SUM_UNCONDITIONAL_CONTROL}}
longrightarrow
DNLimit=0.
]

The boxed node is one `OPEN_MATH` gate.

## 4. What counts as genuine progress on this gate

A candidate result reduces the frontier only if it gives an unconditional
estimate that is strong enough in the project Mellin norm and does not assume
any equivalent form of RH. Examples of useful reductions would be:

- an unconditional cancellation theorem for the complete residue sum in the
  weighted (L^2) norm;
- a different explicit Dirichlet polynomial whose error can be bounded to zero
  without assuming RH;
- a new identity that removes the off-critical residue contribution for a
  demonstrably non-circular reason.

The following do **not** reduce the gate:

- bounds conditional on RH;
- simplicity of all zeros plus RH-dependent estimates;
- the BCF (sum 1/|zeta'(\rho)|^2) hypothesis used together with RH;
- finite zero verification;
- finite-(N) Arb or Mellin numerics;
- splitting the residue sum into more files without a new unconditional
  estimate.

## 5. Current classification

`BCF_LEMMA2 = PROVED_EXTERNAL_UNCONDITIONAL_IDENTITY`

`OFF_CRITICAL_RESIDUE_OBSTRUCTION = STRUCTURALLY_EXPLICIT`

`MAIER_RASSIAS_STRESS_TEST = CONDITIONAL_OFF_CRITICAL_OBSTRUCTION_MODEL`

`ZERO_RESIDUE_SUM_UNCONDITIONAL_CONTROL = OPEN_MATH`

`DNLimit_EQ_ZERO = false`

`RH_PROVED = false`


## 6. Backward-dense unconditional estimate sweep

This section tests the standard unconditional estimate families directly against
the one material gate. The result is deliberately conservative:

NO_SURFACED_UNCONDITIONAL_CLOSING_ESTIMATE_IN_TESTED_FAMILIES

This is not a proof that no such estimate can exist. It is an audit result:
the tested classical families do not match the hypothesis/conclusion/quantifier
profile needed to close the complete BCF residue contribution.

### 6.1 Zero-free region

Modern Vinogradov--Korobov type zero-free regions exclude zeros only in a strip
very close to Re(s)=1. They do not exclude zeros with

1/2 < beta < 1 - eta(|gamma|).

Therefore they leave exactly the possibility that produces the BCF factor

N^(beta-1/2).

Classification:
- HYPOTHESIS_MATCH: PASS
- CONCLUSION_MATCH: FAIL_FOR_CRITICAL_CLOSURE
- QUANTIFIER_MATCH: FAIL_FOR_ALL_NONTRIVIAL_ZEROS
- status: INSUFFICIENT_ZERO_FREE_REGION

Reference audited: Kevin Ford, Zero-free regions for the Riemann zeta
function, 2019, arXiv:1910.08205.

### 6.2 Zero-density estimates

A zero-density theorem controls N(sigma,T), the number of zeros with
beta >= sigma up to height T. Guth--Maynard prove unconditionally an estimate
of the form

N(sigma,T) <= T^(30(1-sigma)/13+o(1)).

This is a strong counting theorem, but it is still compatible with finitely
many off-critical zeros. One such zero is enough to leave a term at the raw
scale N^(beta-1/2). Moreover, zero-density counts zeros; the BCF residue also
depends on local Laurent data such as 1/zeta'(rho) for simple zeros.

Classification:
- HYPOTHESIS_MATCH: PASS
- CONCLUSION_MATCH: FAIL_FOR_WEIGHTED_RESIDUE_VANISHING
- QUANTIFIER_MATCH: FAIL__COUNTING_AVERAGE_DOES_NOT_EXCLUDE_SINGLE_OFF_LINE_ZERO
- status: INSUFFICIENT_ZERO_DENSITY

Reference audited: Larry Guth and James Maynard, New large value estimates for
Dirichlet polynomials, 2024, arXiv:2405.20552.

### 6.3 Positive proportion of simple critical-line zeros

Current unconditional work proves that a large positive proportion of
non-trivial zeros are simple and on the critical line. This is genuine progress
on the zero set, but the R2 gate is universal: even a single remaining
off-critical zero can contribute the N^(beta-1/2) scale.

Classification:
- HYPOTHESIS_MATCH: PASS
- CONCLUSION_MATCH: FAIL_FOR_ALL_ZEROS
- QUANTIFIER_MATCH: FAIL__POSITIVE_PROPORTION_VS_UNIVERSAL_CONTROL
- status: INSUFFICIENT_CRITICAL_LINE_PROPORTION

Reference audited: Levent Alpoge and Ralph Furman, More than two thirds of the
zeta zeros are simple and on the critical line, 2026, arXiv:2608.13637.

### 6.4 Termwise absolute-value estimate

For a simple zero,

|R_N(rho,s)| =
N^(beta-Re(s)) / (|zeta'(rho)| |rho-s|^2).

Taking absolute values destroys any possible cancellation and immediately
requires reciprocal derivative control. On the critical line this leads to
negative moments of zeta'(rho); off the line it also retains the factor
N^(beta-1/2).

BCF explicitly note that convergence issues involving sums of 1/zeta'(rho)
force them to assume their derivative-moment condition in the conditional
closing theorem.

Classification:
- HYPOTHESIS_MATCH: FAIL_WITHOUT_NEW_RECIPROCAL_DERIVATIVE_INPUT
- CONCLUSION_MATCH: POTENTIALLY_STRONG_IF_HYPOTHESIS_WERE_AVAILABLE
- status: BLOCKED_NEGATIVE_ZETA_DERIVATIVE_MOMENT

### 6.5 Cauchy--Schwarz

A natural attempt factors the complete residue sum into a negative
zeta-derivative moment and a weighted zero-location sum. This does not eliminate
the obstruction. The first factor is exactly the type of input used by BCF,
while the second still sees off-critical exponents beta>1/2.

Recent negative-moment results found in the audit are themselves conditional on
RH and/or simplicity in the strength relevant here; they cannot be imported as
unconditional closing evidence.

Classification:
- HYPOTHESIS_MATCH: FAIL__REINTRODUCES_BCF_NEGATIVE_DERIVATIVE_MOMENT
- status: CIRCULAR_OR_UNAVAILABLE_CAUCHY_SCHWARZ_ROUTE

### 6.6 Functional-equation pairing

The functional equation pairs an off-critical zero rho=beta+i gamma with
1-rho and with conjugates. At Re(s)=1/2, their raw N-weights are respectively

N^(beta-1/2) and N^(1/2-beta).

These are reciprocal scales, not equal scales. Symmetry of the zero set alone
therefore does not provide a uniform cancellation identity for the BCF residue
sum. Any cancellation theorem strong enough to remove the growing component
would be new mathematical input and must be stated explicitly.

Classification:
- HYPOTHESIS_MATCH: PASS_FOR_ZERO_SYMMETRY
- CONCLUSION_MATCH: FAIL__NO_UNCONDITIONAL_CANCELLATION_IDENTITY
- status: SYMMETRY_ONLY_NOT_CONTROL

### 6.7 Multiple zeros

The convenient formula

R_N(rho,s)=N^(rho-s)/(zeta'(rho)(rho-s)^2)

is valid only for simple zeros. If rho has multiplicity m>1, then 1/zeta(z)
has a pole of order m, and the residue contains derivatives of N^(z-s), hence
powers of log N, together with higher Laurent coefficients of 1/zeta.

Therefore an unconditional argument cannot silently assume simplicity merely to
make the residue sum termwise manageable.

Classification:
- SIMPLE_ZERO_FORMULA: CONDITIONAL_ON_SIMPLICITY
- MULTIPLE_ZERO_CASE: REQUIRES_HIGHER_ORDER_RESIDUE_CONTROL
- status: MULTIPLICITY_NOT_ELIMINATED

### 6.8 Finite verification

Checking all zeros up to any finite height T0 cannot prove the N->infinity
residue estimate, because unverified zeros above T0 remain in the complete BCF
sum.

Classification:
- CONCLUSION_MATCH: FAIL_FOR_INFINITE_ZERO_SUM
- QUANTIFIER_MATCH: FAIL__FINITE_HEIGHT_VS_ALL_ZEROS
- status: FINITE_VERIFICATION_NOT_CLOSING

## 7. Dense residue conclusion

The sweep leaves the compressed DAG unchanged:

BCF Lemma 2
  -> ZERO_RESIDUE_SUM_UNCONDITIONAL_CONTROL
  -> DNLimit=0.

What survived:
- BCF_LEMMA2 = PROVED_EXTERNAL_UNCONDITIONAL_IDENTITY
- zero-free regions = valid but insufficient
- zero-density estimates = valid but insufficient
- positive-proportion critical-line/simple-zero results = valid but insufficient
- termwise absolute value / Cauchy--Schwarz = blocked by reciprocal
  zeta'(rho) moments and off-critical growth
- functional-equation symmetry = no closing cancellation theorem
- multiple-zero case remains part of the same material obligation
- finite verification cannot change the asymptotic quantifier

Therefore:

ZERO_RESIDUE_SUM_UNCONDITIONAL_CONTROL = OPEN_MATH

MATERIAL_GATE_COUNT = 1

DNLimit_EQ_ZERO = false

RH_PROVED = false
