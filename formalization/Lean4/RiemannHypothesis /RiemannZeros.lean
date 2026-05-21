import Mathlib.Data.Complex.Basic

namespace YXT.Millennium.RiemannHypothesis

open Complex

/-- Non-trivial zeros of the Riemann zeta function -/
def riemannZeros : Set ℂ :=
  { ρ : ℂ | zeta ρ = 0 ∧ ρ.re ≠ 0 ∧ ρ.im ≠ 0 }

/-- Critical line Re(s) = 1/2 -/
def criticalLine : Set ℂ := { s : ℂ | s.re = 1/2 }

end YXT.Millennium.RiemannHypothesis
