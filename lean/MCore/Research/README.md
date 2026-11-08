# Symmetry bridge tests

This isolated Lean module tests the algebra behind a proposed common midpoint
state called Nanã. It does not assert that the Millennium Problems share a
mathematical symmetry and does not prove any of their conjectures.

Run from the repository root:

    lake env lean lean/MCore/Research/SymmetryBridgeTests.lean

The tests establish:

- reflection about any vertical line Re(z) = c is an involution;
- its fixed locus is exactly Re(z) = c;
- translation by b - a intertwines reflection about Re(z) = a with reflection
  about Re(z) = b, and maps their fixed loci exactly;
- the centers c = 1/2 and c = 1 are conjugate by a translation of 1/2;
- after centering, the reflection acts as w ↦ -conj(w);
- zeros are mirrored if a function is separately assumed to satisfy the
  corresponding functional equation and conjugation symmetry;
- a coordinate shift alone does not identify zeros of unrelated functions;
- a symmetric pair can consist of non-fixed points;
- Boolean complementation is an involution with no fixed Boolean state.

The coordinate conjugacy does not identify zeta zeros with elliptic-curve
L-function zeros. In particular, symmetry alone does not imply that every zero
lies on the fixed locus.


## Explicit value ledger and operator laws

| Item | Exact value or law | Status |
|---|---|---|
| Riemann center | \(c_\zeta=1/2\) | Exact coordinate |
| Elliptic-curve \(L\)-function center, usual weight-two normalization | \(c_E=1\) | Exact coordinate |
| Shift between these centers | \(c_E-c_\zeta=1/2\) | Proved in Lean here |
| Complex reflection | \(R_c(s)=2c-\overline{s}\) | Involution; fixed locus \(\Re(s)=c\) |
| Recentring | \(T_{a,b}(s)=s+(b-a)\) | \(T_{a,b}R_a=R_bT_{a,b}\) |
| Fibonacci ratio | \(F_{n+1}/F_n\to\varphi=(1+\sqrt5)/2\) | Standard sequence limit |
| Scaled Fibonacci error | \(F_n^2\lvert\varphi-F_{n+1}/F_n\rvert\to1/\sqrt5\) | Exact limit |
| Prime expression | \(F(p)=1/2-1/\sqrt p\) | Nonzero for prime \(p\); its positive-integer root is \(p=4\), not prime |
| Euler product | \(\zeta(s)=\prod_p(1-p^{-s})^{-1}\) | Absolutely convergent for \(\Re(s)>1\), not on \(\Re(s)=1/2\) |
| Central state | states indexed \(1,2,3\), reflected by \(j\mapsto4-j\) | Separate finite-state model; center index \(2\) |

Rounded reference values: \(\varphi\approx1.61803398875\), \(1/\sqrt5\approx0.44721359550\), and \(1/\varphi\approx0.61803398875\). The first convergents \(F_{n+1}/F_n\) are \(2/1,3/2,5/3,8/5,13/8,21/13,34/21,55/34\).

For the prime-index comparison, let \(p\) be prime and \(n\in\mathbb N\). Multiplication \(p\mapsto np\) gives \(0\) for \(n=0\), leaves \(p\) unchanged for \(n=1\), and satisfies \(np>p\) for \(n>1\); the strict-growth case is formalized in Lean. This is index scaling, not a new zeta symmetry. Also, \(\sum_p p^{-1/2}\) diverges, so the Euler product has no convergence justification on the critical line.

The conditional zero-mirroring lemma assumes a functional equation and conjugation law. It does not instantiate them for raw \(\zeta\) or a particular elliptic curve. For zeta, the relevant symmetry is expressed through the completed/normalized function.

The 3D/4D rotations and common operators across unrelated Millennium problems remain unspecified: no numerical parameters or cross-problem map are claimed without definitions and proof. The central state indexed by \(2\) is a separate finite-state model; it is not IEEE NaN and does not define an indeterminate scalar in \(\mathbb R\) or \(\mathbb C\).
