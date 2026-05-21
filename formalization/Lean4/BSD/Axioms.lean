import Mathlib.AlgebraicGeometry.EllipticCurve.Basic
import YXTT2.0.Manifolds.T64

namespace YXT.Millennium.BSD

/-- Algebraic rank to geometric dimension mapping -/
axiom algebraic_to_geometric_rank (E : EllipticCurve ℚ) :
  (E.rational_points).rank = dim_SLag E T64

/-- Geometric to spectral kernel -/
axiom geometric_to_spectral (E : EllipticCurve ℚ) :
  dim_ker_DE E = dim_SLag E T64 + 1

/-- Spectral to analytic rank -/
axiom spectral_to_analytic (E : EllipticCurve ℚ) :
  order_of_vanishing (L_function E) 1 = dim_ker_DE E - 1

end YXT.Millennium.BSD
