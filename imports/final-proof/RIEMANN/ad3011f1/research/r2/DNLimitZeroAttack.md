# R2 — DNLimit = 0 attack

Base: R1 GREEN_EXTERNAL_INTERFACE @ 53d97bc0a3e64de419f4214625ae75a9e1ecb178

Current research head before this analytic consolidation:
fa5b81a72a9ce400193ec8550785f3ab9c261524

Scientific status:
- target: \`concreteNBData.DNLimit concreteGeneratorFamily = 0\`
- \`dnlimit_eq_zero_proved = false\`
- \`rh_proved = false\`
- no Lean theorem is emitted in R2 until an unconditional L2 upper bound is obtained.

## 1. Exact model and normalization

The R0/R1 chain fixes the model:

\[
\chi(x)=1_{(0,1)}(x),\qquad
\rho_a(x)=\left\{\frac1{a x}\right\},\qquad a\in\mathbb N_{>0},
\]

in \(L^2((0,\infty),dx)\).

The internal family is indexed by \(n\in\mathbb N\) with \(a=n+1\).

Define the dilation convention used in this note by

\[
(D_a f)(x)=f(a x).
\]

Then

\[
D_aD_b=D_{ab},\qquad
\|D_a f\|_2^2=\frac1a\|f\|_2^2,\qquad
\rho_a=D_a\rho_1.
\]

This convention is deliberate. It avoids the common normalization error
\(\{a/x\}\) in place of \(\{1/(a x)\}\).

Frozen facts already certified upstream:
- \(\chi\in L^2\) and \(\|\chi\|_2^2=1\);
- every concrete \(\rho_a\in L^2((0,\infty),dx)\);
- the concrete generator family is unconditional.

Do not redefine these objects in R2.

## 2. Target vector entry \(b_a\)

For \(a\ge1\),

\[
b_a=\langle\chi,\rho_a\rangle
=\int_0^1 \left\{\frac1{a x}\right\}\,dx.
\]

Set \(t=1/(a x)\). Then \(dx=-dt/(a t^2)\), hence

\[
b_a
=\frac1a\int_{1/a}^{\infty}\frac{\{t\}}{t^2}\,dt.
\]

On \(1/a\le t<1\), \(\{t\}=t\). Therefore

\[
b_a
=\frac1a\left(
\int_{1/a}^{1}\frac{dt}{t}
+\int_1^\infty\frac{\{t\}}{t^2}\,dt
\right).
\]

Using the classical identity

\[
\int_1^\infty\frac{\{t\}}{t^2}\,dt=1-\gamma,
\]

we obtain

\[
\boxed{
b_a=\frac{\log a+1-\gamma}{a}.
}
\]

For the continuous extension \(b(a)=(\log a+1-\gamma)/a\),

\[
b'(a)=\frac{\gamma-\log a}{a^2},
\qquad
b''(a)=\frac{2\log a-2\gamma-1}{a^3}.
\]

These derivative identities are diagnostic only; the certified generator index is integer.

## 3. Exact Gram entry and the cancellation structure

The Gram entry is

\[
G_{a,b}
=\langle\rho_a,\rho_b\rangle
=\int_0^\infty
\left\{\frac1{a x}\right\}
\left\{\frac1{b x}\right\}\,dx.
\]

With \(t=1/x\),

\[
\boxed{
G_{a,b}
=
\int_0^\infty
\left\{\frac{t}{a}\right\}
\left\{\frac{t}{b}\right\}
\frac{dt}{t^2}.
}
\]

This is the exact \(dx\)-model after an explicit change of variables; no
\(dx/x\) or unproved alternate measure is imported.

For every finite truncation \(0<T<\infty\),

\[
\frac{\{t/a\}\{t/b\}}{t^2}
=
\frac1{ab}
-\frac{\lfloor t/b\rfloor}{a t}
-\frac{\lfloor t/a\rfloor}{b t}
+\frac{\lfloor t/a\rfloor\lfloor t/b\rfloor}{t^2}.
\]

Important firewall: the four terms above are **not** individually integrable
over \((0,\infty)\). The identity may be integrated termwise only on a finite
truncation and the limit taken after cancellation. Writing four separate
improper integrals would manufacture divergent expressions and is forbidden.

Near \(t=0\), both fractional parts equal their arguments and the original
integrand equals \(1/(ab)\), so there is no singularity in the full product.
At infinity the full product is bounded by \(1/t^2\), hence integrable.

Symmetry is immediate:

\[
G_{a,b}=G_{b,a}.
\]

If \(d=\gcd(a,b)\), \(a=dp\), \(b=dq\), then \(t=du\) gives

\[
\boxed{G_{a,b}=\frac1d\,G_{p,q}.}
\]

### Vasyunin/cotangent formula used by the engine

For coprime \(p,q\ge1\), define

\[
V(p,q)
=
\sum_{k=1}^{q-1}
\left\{\frac{k p}{q}\right\}
\cot\left(\frac{\pi k}{q}\right).
\]

The implemented symmetric formula is

\[
\boxed{
G_{p,q}
=
\frac{\log(2\pi)-\gamma}{2}
\left(\frac1p+\frac1q\right)
+
\frac{p-q}{2pq}\log\frac qp
-
\frac{\pi}{2pq}
\bigl(V(q,p)+V(p,q)\bigr).
}
\]

Together with the gcd reduction, this gives every finite Gram entry.

Provenance:
- L. Báez-Duarte, *Harmonic Series Summation Lemma and Vasyunin's Formulas*,
  Zap. Nauchn. Sem. POMI 282 (2001), 20–25; J. Math. Sci. 120 (2004), 1653–1656.
- S. Bettin and B. Conrey, *Period functions and cotangent sums*,
  Algebra & Number Theory 7 (2013), formula (13), provides an independently
  published equivalent symmetric Vasyunin formula.
- The repository independently checks the implementation against a truncated
  direct integral in \`research/r2/validate_vasyunin.py\`.

The analytic formula is therefore treated as external mathematical input with
explicit provenance plus an independent numerical identity check; it is not a
project axiom.

### Exact tail in the original x-variable

For \(X\ge1\), \(x\ge X\) implies \(1/(a x)<1\) and \(1/(b x)<1\). Hence

\[
\rho_a(x)\rho_b(x)=\frac1{abx^2}
\]

and

\[
\boxed{
\int_X^\infty \rho_a(x)\rho_b(x)\,dx
=\frac1{abX}.
}
\]

This is useful for independent quadrature checks, not for replacing the closed
Vasyunin formula in the interval-certified engine.

## 4. Finite optimal projection and exact meaning of DN

The frozen NB layer defines

\[
d_N=\|\chi-P_{V_N}\chi\|_2,
\qquad
DN_N=d_N^2.
\]

This distinction is fixed by
\`lean/MCore/RH/NB/Distance.lean\`; the research engine follows it.

For the first \(N\) generators define

\[
G_N=(G_{jk})_{1\le j,k\le N},
\qquad
b_N=(b_j)_{1\le j\le N}.
\]

When \(G_N\) is invertible, the optimal coefficient vector solves

\[
G_N c_N=b_N.
\]

Since \(\|\chi\|_2^2=1\),

\[
\boxed{
DN_N
=
1-b_N^T G_N^{-1}b_N.
}
\]

Thus the JSON field \`DN\` is the **squared** residual. The residual norm is
\(\sqrt{DN_N}\).

The Arb backend uses ball arithmetic and a rigorous matrix solve; every
successful finite solve encloses the exact finite coefficient vector and
finite \(DN_N\). This certifies only finite \(N\).

## 5. Interval-certified finite ladder

Runtime:
- Python 3.12
- python-flint 0.9.0 / Arb
- mpmath 1.3.0
- numpy 2.3.5
- scipy 1.17.0
- sympy 1.14.0

The dedicated workflow validates:
1. pinned dependency installation;
2. Arb constants and rigorous solve;
3. independent truncated-integral Vasyunin checks;
4. mpmath pilot;
5. Arb interval solve;
6. semantic non-promotion firewall.

Current certified values:

| N | DN_N = d_N^2 | DN_N log N |
|---:|---:|---:|
| 2 | 0.2899645737422027318112005834160466 | 0.2009881267516741735073435060640294 |
| 4 | 0.06512886865990024957106136367286124 | 0.09028778336933768317047902206236882 |
| 8 | 0.02416142158589668502280894301085134 | 0.05024226375175346904235009514896138 |
| 16 | 0.01789402347696943509905506314795876 | 0.04961276768773933359053561513017498 |
| 32 | 0.01405194369952985983642504072212329 | 0.04870032578358104817080025529562167 |
| 64 | 0.01137604029967365814705897002932677 | 0.04731162155793066882276971344724531 |
| 128 | 0.009658549278111909910035392571452577 | 0.04686357340295795809826330378435643 |
| 256 | 0.008233716277261021441598038102635435 | 0.04565741778491204755750270431193501 |

For \(N=256\), the rigorous solve also certifies a positive Gram determinant
around \(5.15549\times10^{-893}\). The finite matrix is therefore invertible.

The \(N=256\) artifact is:
- run 35284617230
- job 105414089528
- artifact 10523628899
- SHA-256 c09854db08a327ee23e19d981fdec61d57d20fee1dcb2fb780be74b74385b106
- Arb decimal precision 140

## 6. Burnol rate guardrail

Burnol's unconditional lower bound is asymptotic:

\[
\liminf_{N\to\infty} DN_N\log N
\ge
\sum_{\Re\rho=1/2}\frac{m(\rho)^2}{|\rho|^2}.
\]

It is **not** a pointwise inequality for every finite \(N\). Consequently the
finite value at \(N=256\) may lie below a proposed limiting constant without
contradicting Burnol.

Under RH plus simplicity, the full zero sum becomes the familiar conjectural
constant

\[
2+\gamma-\log(4\pi)\approx0.0461914179322420.
\]

The data are useful for diagnostics only. They do not establish that
\(DN_N\log N\) converges to that constant, and they do not establish any
uniform upper bound.

## 7. Mellin interface

For \(0<\Re s<1\),

\[
\int_0^\infty \rho_a(x)x^{s-1}\,dx
=
-a^{-s}\frac{\zeta(s)}{s},
\]

with the sign convention following
\(\int_0^\infty\{t\}t^{-s-1}dt=-\zeta(s)/s\).

This explains why the real Hilbert approximation problem detects complex zeta
zeros. R1, however, is the authoritative criterion interface. R2 does not
replace R1 by an informal Mellin argument.

## 8. Exact reduction of the open frontier

For any explicit coefficient vector define

\[
v_N=\sum_{k=1}^N c_{N,k}\rho_k,
\qquad
E_N=\|\chi-v_N\|_2.
\]

Best approximation gives

\[
d_N\le E_N,\qquad DN_N\le E_N^2.
\]

Therefore an unconditional explicit family satisfying

\[
E_N\to0
\]

is sufficient for \`DNLimit = 0\`.

Equivalently, any rigorously proved sequence
\(\varepsilon_N\to0\) with

\[
DN_N\le\varepsilon_N
\]

closes R2.

A bound of the form

\[
DN_N\le\frac{C}{\log N}
\]

would suffice, but the finite ladder does **not** prove such a bound. Producing
any unconditional vanishing upper bound is already the genuine RH-equivalent
mathematics exposed by R1.

## 9. Route audit / falsification

Reject a candidate if it:
- assumes RH or an equivalent statement;
- uses the RH-conditional damped Möbius convergence estimate as an
  unconditional step;
- infers an infinite limit from finitely many Arb-certified N;
- integrates the four floor-expanded Gram terms separately over
  \((0,\infty)\);
- transports a Gram formula from a different measure without an explicit
  isometry/change of variables;
- confuses \`dN\` with \`DN=dN^2\`;
- treats Burnol's liminf as a pointwise lower bound;
- changes \(\rho_a=\{1/(a x)\}\) to \(\{a/x\}\) in the certified dx model.

## 10. Finite Möbius coefficient diagnostics

The interval-certified N=256 run at source
`77be7ec1a7d4e8c834a1afc8dc30cbcf62d61ec1` also tests explicit coefficient
families inside the same exact Gram model.

Squared L2 errors at N=256:

- raw Möbius coefficients \(c_n=-\mu(n)\):
  \(E_N^2=0.0417581690537262214999818766465277896\ldots\);
- square-root logarithmic taper:
  \(E_N^2=0.0436082257713104680853885692999207987\ldots\);
- linear logarithmic taper:
  \(E_N^2=0.1242877077163881918488587124202360152\ldots\).

For comparison, the optimal finite projection has

\[
DN_{256}=0.0082337162772610214415980381026354345\ldots
\]

so none of these explicit families is close enough to substitute for the
optimal coefficients at N=256.

A stronger finite structural signal appears in the optimal vector itself:

- squarefree indices among 1,...,256: 157;
- sign matches between the optimal coefficient and \(-\mu(n)\): 157/157;
- mean absolute optimal coefficient on squarefree indices:
  \(0.3630560816477301\ldots\);
- mean absolute optimal coefficient on nonsquarefree indices:
  \(0.05580093176501322\ldots\).

Classification: `INTERVAL_CERTIFIED_FINITE_N_MODEL_EVIDENCE` for the explicit
candidate errors; coefficient summary statistics are descriptive model
evidence. The 100% finite sign match does **not** imply an all-N sign theorem
or an asymptotic coefficient formula.

The next high-value analytic question is therefore narrower than a blind
search over coefficients: determine whether the optimal vector admits a
provable decomposition

\[
c_{N,n}=-\mu(n)w_N(n)+r_{N,n}
\]

with an explicit weight \(w_N\) and an error term whose Gram energy is
uniformly controlled and tends to zero. Establishing such a statement without
assuming RH would provide a concrete route toward the required upper bound.

## Frontier

OPEN_BRIDGE:

\[
\boxed{
\texttt{concreteNBData.DNLimit concreteGeneratorFamily = 0}
}
\]

No project axiom.
No sorry.
No RH theorem emitted.


## 11. Explicit Riesz–Möbius candidate selected by Arb diagnostics

The dyadic finite-N probe is recorded in
`audit/R2_MOBIUS_DYADIC_PROBE.md`.

It tests the explicit weights

[
w_{N,alpha}(n)
=
left(\frac{log(N/n)}{log N}\right)^alpha
quad (1le nle N),
]

with coefficients

[
c_{N,n}=-mu(n)w_{N,alpha}(n).
]

On the grid (alpha=m/16), finite interval evidence selects the narrow band
([3/16,1/4]). With scale fixed exactly to one, (3/16) is the best tested
exponent at N=64,128,256, while (1/4) is best at N=32. This is not evidence
for a limiting exponent theorem.

Define

[
P_{N,alpha}(s)
=
sum_{nle N}\frac{mu(n)w_{N,alpha}(n)}{n^s}.
]

For

[
v_{N,alpha}
=
-sum_{nle N}mu(n)w_{N,alpha}(n)\rho_n,
]

Mellin–Plancherel yields the exact finite identity

[
\boxed{
|chi-v_{N,alpha}|_2^2
=
\frac1{2pi}int_{mathbb R}
\frac{
|1-zeta(\tfrac12+it)P_{N,alpha}(\tfrac12+it)|^2
}{
\tfrac14+t^2
},dt.
}
]

This converts the selected R2 route into one sharp analytic obligation:

[
existsalpha\text{ explicit},qquad
int_{mathbb R}
\frac{
|1-zeta(\tfrac12+it)P_{N,alpha}(\tfrac12+it)|^2
}{
\tfrac14+t^2
},dt
longrightarrow0.
]

No known unconditional estimate in the audited literature supplies this
limit. A proof of it would itself close the Nyman–Beurling frontier.

The finite data therefore select a concrete family to study, but they do not
reduce the epistemic status of the final bridge:

`UNIFORM_UPPER_BOUND = OPEN_MATH`.


## 12. Bettin–Conrey–Farmer: unconditional decomposition, conditional close

The literature audit now separates a substantially stronger fact from the
finite taper scan. Bettin–Conrey–Farmer use the explicit linear polynomial

[
V_N(s)=sum_{nle N}
left(1-\frac{log n}{log N}\right)\frac{mu(n)}{n^s}.
]

Their Lemma 2 is explicitly unconditional. For (0<Re(s)<1),

[
V_N(s)
=
\frac1{zeta(s)}
left(1-\frac1{log N}\frac{zeta'}{zeta}(s)\right)
+
\frac1{log N}sum_\rho R_N(\rho,s)
+
\frac1{log N}F_s(1/N),
]

with

[
R_N(\rho,s)
=
operatorname{Res}_{z=\rho}
\frac{N^{z-s}}{zeta(z)(z-s)^2}.
]

Therefore

[
1-zeta(s)V_N(s)
=
\frac1{log N}
left[
\frac{zeta'}{zeta}(s)
-zeta(s)sum_\rho R_N(\rho,s)
-zeta(s)F_s(1/N)
\right].
]

Repository classification of this identity:

`PROVED_EXTERNAL_UNCONDITIONAL_IDENTITY`.

BCF's asymptotic evaluation is a different statement: their Theorem 1 assumes
RH plus
(sum_{|Im\rho|le T}|zeta'(\rho)|^{-2}ll T^{3/2-delta}).
Their Lemma 3, which supplies the zero-residue estimate, also uses RH and
simplicity of the zeros. Those steps are therefore
`CIRCULAR_CONDITIONAL_ASYMPTOTIC` for R2 and cannot be imported as a close.

This changes the research frontier. The fractional (alphain[3/16,1/4])
band remains useful only as a pre-asymptotic finite-(N) diagnostic. The
highest-value analytic blocker is now:

[
\boxed{\texttt{ZERO_RESIDUE_SUM_UNCONDITIONAL_CONTROL}}.
]

The detailed source audit is
`audit/R2_BCF_UNCONDITIONAL_DECOMPOSITION.md`.

## 13. Mellin band probe: where the finite fractional error lives

The dedicated run `35291411995` reconstructed approximately 96--97% of the
fixed (alpha=3/16) Gram error by direct Mellin quadrature on
(|t|le500). This is numerical model evidence, not interval-certified
quadrature and not a tail theorem.

For (N=256), the largest recorded contributions are

[
E^2_{|t|<1}approx0.00844086,qquad
E^2_{10<|t|<20}approx0.00429602,qquad
E^2_{20<|t|<50}approx0.00569178.
]

Thus the finite error is distributed across low frequency and the first-zero
region; it is not explained by a single removable high-frequency tail. This
supports shifting effort from further blind finite-(N) scans to the BCF
zero-residue decomposition.
