import Mathlib

/-!
# Symmetry bridge: algebraic tests

These tests formalize involutions and fixed loci only. They do not encode or prove
any Millennium Prize conjecture.
-/

namespace MCore.Research.SymmetryBridgeTests

/-- Reflection across the vertical line with real part c. -/
def mirrorAbout (c : ℝ) (z : ℂ) : ℂ :=
  (2 * (c : ℂ)) - star z

/-- The reflection is an involution. -/
theorem mirrorAbout_involutive (c : ℝ) (z : ℂ) :
    mirrorAbout c (mirrorAbout c z) = z := by
  simp [mirrorAbout]

/-- Its fixed locus is exactly the vertical line through c. -/
theorem mirrorAbout_fixed_iff (c : ℝ) (z : ℂ) :
    mirrorAbout c z = z ↔ z.re = c := by
  constructor
  · intro h
    have hRe := congrArg Complex.re h
    have hRe' : 2 * c - z.re = z.re := by
      simpa [mirrorAbout] using hRe
    linarith
  · intro h
    apply Complex.ext
    · simp [mirrorAbout, h]; ring
    · simp [mirrorAbout]

/-- Translation carrying the vertical line through a to the line through b. -/
def recenterBetween (a b : ℝ) (z : ℂ) : ℂ :=
  z + ((b - a : ℝ) : ℂ)

/-- Recentring intertwines the two reflections. -/
theorem recenterBetween_intertwines (a b : ℝ) (z : ℂ) :
    recenterBetween a b (mirrorAbout a z) =
      mirrorAbout b (recenterBetween a b z) := by
  simp [recenterBetween, mirrorAbout]
  ring

/-- The translation sends the fixed line at a exactly to the fixed line at b. -/
theorem recenterBetween_fixed_locus (a b : ℝ) (z : ℂ) :
    (recenterBetween a b z).re = b ↔ z.re = a := by
  constructor
  · intro h
    have h' : z.re + (b - a) = b := by
      simpa [recenterBetween] using h
    linarith
  · intro h
    simp [recenterBetween, h]

/-- Recentering composes by adding the shifts. -/
theorem recenterBetween_comp (a b c : ℝ) (z : ℂ) :
    recenterBetween b c (recenterBetween a b z) =
      recenterBetween a c z := by
  simp [recenterBetween]
  ring

/-- The Riemann and BSD centers are conjugate by the translation z ↦ z + 1/2. -/
example (z : ℂ) :
    recenterBetween (1 / 2 : ℝ) 1 (mirrorAbout (1 / 2 : ℝ) z) =
      mirrorAbout 1 (recenterBetween (1 / 2 : ℝ) 1 z) := by
  simpa using recenterBetween_intertwines (1 / 2 : ℝ) 1 z

/-- Centering at c turns the reflection into w ↦ -conj(w). -/
def centeredCoordinate (c : ℝ) (z : ℂ) : ℂ :=
  z - (c : ℂ)

theorem centeredCoordinate_mirror (c : ℝ) (z : ℂ) :
    centeredCoordinate c (mirrorAbout c z) =
      -star (centeredCoordinate c z) := by
  simp [centeredCoordinate, mirrorAbout]
  ring

/-- A function with the stated functional and conjugation symmetries
preserves zeros under the mirror map. -/
theorem mirrorAbout_maps_zero
    (c : ℝ) (f : ℂ → ℂ)
    (hFunctional : ∀ w, f ((2 * (c : ℂ)) - w) = f w)
    (hConjugation : ∀ w, f (star w) = star (f w))
    (z : ℂ) (hz : f z = 0) :
    f (mirrorAbout c z) = 0 := by
  calc
    f (mirrorAbout c z) = f ((2 * (c : ℂ)) - star z) := rfl
    _ = f (star z) := hFunctional (star z)
    _ = star (f z) := hConjugation z
    _ = 0 := by simp [hz]

/-- The Riemann-centered line is the fixed locus for c = 1/2. -/
example (z : ℂ) :
    mirrorAbout (1 / 2 : ℝ) z = z ↔ z.re = 1 / 2 := by
  simpa using mirrorAbout_fixed_iff (1 / 2 : ℝ) z

/-- The BSD functional-equation center is represented by c = 1. -/
example (z : ℂ) :
    mirrorAbout (1 : ℝ) z = z ↔ z.re = 1 := by
  simpa using mirrorAbout_fixed_iff (1 : ℝ) z

/-- A shift of coordinates alone does not identify zeros of unrelated functions. -/
def toySource (z : ℂ) : ℂ := z

def toyTarget (z : ℂ) : ℂ := z - 1

theorem recenter_does_not_identify_arbitrary_zero_sets :
    toySource 0 = 0 ∧
      toyTarget (recenterBetween (1 / 2 : ℝ) 1 0) ≠ 0 := by
  constructor
  · simp [toySource]
  · norm_num [toyTarget, recenterBetween]

/-- A symmetric two-point set can consist entirely of non-fixed points:
symmetry alone does not force an object onto the fixed locus. -/
def realMirror (x : ℝ) : ℝ := -x

theorem symmetric_pair_not_fixed :
    realMirror 1 = -1 ∧ realMirror (-1) = 1 ∧ realMirror 1 ≠ 1 := by
  norm_num [realMirror]

/-- Boolean complementation is an involution with no fixed Boolean state. -/
def boolComplement (b : Bool) : Bool := !b

theorem boolComplement_involutive (b : Bool) :
    boolComplement (boolComplement b) = b := by
  cases b <;> rfl

theorem boolComplement_has_no_fixed_point (b : Bool) :
    boolComplement b ≠ b := by
  cases b <;> decide


/-- Exact center used for the Riemann zeta symmetry. -/
noncomputable def zetaCenter : ℝ := 1 / 2

/-- Exact center of the completed elliptic-curve L-function in the usual
weight-two normalization. -/
noncomputable def ellipticLCenter : ℝ := 1

/-- Exact coordinate shift from the zeta center to the elliptic L-function center. -/
noncomputable def zetaToEllipticShift : ℝ := ellipticLCenter - zetaCenter

theorem zetaToEllipticShift_exact : zetaToEllipticShift = 1 / 2 := by
  norm_num [zetaToEllipticShift, ellipticLCenter, zetaCenter]

theorem zetaMirror_formula (z : ℂ) :
    mirrorAbout zetaCenter z = 1 - star z := by
  norm_num [mirrorAbout, zetaCenter]

theorem ellipticLMirror_formula (z : ℂ) :
    mirrorAbout ellipticLCenter z = 2 - star z := by
  norm_num [mirrorAbout, ellipticLCenter]

/-- A separate three-state model for the user's central-state convention.
The center is indexed by 2; this is a discrete state model, not IEEE NaN and
not an assertion that an indeterminate scalar belongs to ℝ or ℂ. -/
inductive NanaPosition where
  | left
  | center
  | right
  deriving DecidableEq, Repr

/-- Index the three states by 1, 2, 3, so the middle state has index 2. -/
def nanaIndex : NanaPosition → ℕ
  | .left => 1
  | .center => 2
  | .right => 3

/-- Reflection of the three-state model about index 2. -/
def nanaReflect : NanaPosition → NanaPosition
  | .left => .right
  | .center => .center
  | .right => .left

theorem nana_center_has_index_two : nanaIndex .center = 2 := rfl

theorem nanaReflect_involutive (x : NanaPosition) :
    nanaReflect (nanaReflect x) = x := by
  cases x <;> rfl

theorem nanaReflect_index (x : NanaPosition) :
    nanaIndex (nanaReflect x) = 4 - nanaIndex x := by
  cases x <;> norm_num [nanaIndex, nanaReflect]

theorem nana_center_is_fixed : nanaReflect .center = .center := rfl


/-- Multiplication by an integer n > 1 strictly increases a prime index p.
This is an index-scaling fact, not a symmetry of the zeta zeros. -/
theorem prime_index_scaling_strict {p n : ℕ} (hp : p.Prime) (hn : 1 < n) :
    p < n * p := by
  have hmul : 1 * p < n * p := Nat.mul_lt_mul_of_pos_right hn hp.pos
  simpa using hmul

end MCore.Research.SymmetryBridgeTests
