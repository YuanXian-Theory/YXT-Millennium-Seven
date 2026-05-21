import YXTT2.0.Manifolds.T64

namespace YXT.Millennium.NavierStokes

structure VelocityField (M : Type _) where
  u : M → ℝ³

def divergence : (M → ℝ³) → (M → ℝ) := sorry
def laplace : (M → ℝ) → (M → ℝ) := sorry

class SatisfiesNavierStokes (u : ℝ → VelocityField M) where
  satisfies : True

end YXT.Millennium.NavierStokes
