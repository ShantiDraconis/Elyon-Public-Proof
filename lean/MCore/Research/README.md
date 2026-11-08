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
