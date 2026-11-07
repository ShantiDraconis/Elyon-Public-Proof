# Symmetry bridge tests

This isolated Lean module tests the algebra behind a proposed common midpoint
state called Nanã. It does not assert that the Millennium Problems share a
mathematical symmetry and does not prove any of their conjectures.

Run from the repository root:

    lake env lean lean/MCore/Research/SymmetryBridgeTests.lean

The tests establish:

- reflection about any vertical line Re(z) = c is an involution;
- its fixed locus is exactly Re(z) = c;
- after centering, the reflection acts as w ↦ -conj(w);
- zeros are mirrored if a function is separately assumed to satisfy the
  corresponding functional equation and conjugation symmetry;
- a symmetric pair can consist of non-fixed points;
- Boolean complementation is an involution with no fixed Boolean state.

The specializations c = 1/2 and c = 1 model the centers appearing in the
Riemann xi and elliptic-curve L-function functional equations. They do not
identify those theories with one another. In particular, symmetry of zeros
does not imply that every zero lies on the fixed locus.
