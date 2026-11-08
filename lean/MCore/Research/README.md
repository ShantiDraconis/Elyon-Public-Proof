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
| Riemann center | \\(c_\\zeta=1/2\\) | Exact coordinate |
| Elliptic-curve (L)-function center (usual weight-two normalization) | \\(c_E=1\\) | Exact coordinate |
| Shift between those centers | \\(c_E-c_\\zeta=1/2\\) | Proved in Lean in this module |
| Reflections | \\(R_c(s)=2c-\\overline{s}\\) | Involution; fixed locus \\(\\Re(s)=c\\) |
| Recentring | \\(T_{a,b}(s)=s+(b-a)\\) | \\(T_{a,b}R_a=R_bT_{a,b}\\) |
| Fibonacci limit | \\(F_{n+1}/F_n\\to\\varphi=(1+\\sqrt5)/2\\) | Standard sequence limit |
| Scaled Fibonacci error | \\(F_n^2\\lvert\\varphi-F_{n+1}/F_n\\rvert\\to1/\\sqrt5\\) | Exact limit; decimal below is rounded |
| Prime expression | \\(F(p)=1/2-1/\\sqrt p\\) | For prime (p), nonzero; its positive-integer root is (p=4), which is not prime |
| Euler product | \\(\\zeta(s)=\\prod_p(1-p^{-s})^{-1}\\) | Absolutely convergent for \\(\\Re(s)>1\\); this does not extend the product to \\(\\Re(s)=1/2\\) |
| Central state | index (2), with states (1,2,3) reflected by (j\\mapsto4-j) | Separate finite-state model, not a real/complex indeterminate |

Rounded reference values: \\(\\varphi\\approx1.61803398875\\), \\(1/\\sqrt5\\approx0.44721359550\\), and \\(1/\\varphi\\approx0.61803398875\\). Initial convergents for \\(F_{n+1}/F_n\\) are (2/1,3/2,5/3,8/5,13/8,21/13,34/21,55/34).

The conditional zero-mirroring lemma in the Lean file assumes the functional equation and conjugation law as hypotheses. It does not instantiate those hypotheses for the raw zeta function or for a particular elliptic curve. For zeta, the relevant functional equation belongs to the completed/normalized function; the Euler product itself is only used in its half-plane of absolute convergence.

The 3D/4D rotations and any common operators across unrelated Millennium problems remain unspecified here: no numerical parameters or cross-problem map are claimed without definitions and proof.


For the earlier prime-index comparison, let (p) be prime and (ninmathbb N). The operation (pmapsto np) is ordinary index scaling: (n=1) leaves (p) unchanged, while (n>1) gives (np>p) (the latter is formalized in Lean). It is not an additional symmetry of (zeta). Also, (sum_p p^{-1/2}) diverges, so the Euler product has no absolute-convergence justification on the critical line.
