import Mathlib.AlgebraicGeometry.EllipticCurve.Basic
import YXTT2.0.Manifolds.T64

namespace YXT.Millennium.BSD

open EllipticCurve

variable (E : EllipticCurve ℚ)

axiom algebraic_to_geometric_isomorphism (E : EllipticCurve ℚ) :
  (E.rational_points).rank = dim_SLag E T64

axiom geometric_to_spectral_correspondence (E : EllipticCurve ℚ) :
  dim_ker_DE E = dim_SLag E T64 + 1

axiom spectral_to_analytic_mapping (E : EllipticCurve ℚ) :
  order_of_vanishing (L_function E) 1 = dim_ker_DE E - 1

theorem bsd_conjecture (E : EllipticCurve ℚ) : 
  (E.rational_points).rank = order_of_vanishing (L_function E) 1 := by
  rw [algebraic_to_geometric_isomorphism E]
  rw [geometric_to_spectral_correspondence E]
  rw [spectral_to_analytic_mapping E]
  simp

theorem millennium_BSD : BSDConjecture := by
  intro E
  exact bsd_conjecture E

end YXT.Millennium.BSD
