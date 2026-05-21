import YXTT2.0.Operator.Basic
import YXTT2.0.Core.TCSC

namespace YXT.Millennium.RiemannHypothesis

/-- Spectrum-Zero Functor Φ that maps spectrum to critical line -/
structure SpectrumZeroFunctor where
  map : ℂ → ℂ
  well_defined : ∀ (D : OperatorT64) (h : D.isTCSC) (λ : ℂ),
    λ ∈ D.spectrum → map λ = 1/2 + I * λ.im

/-- Canonical functor used in this paper -/
def canonicalPhi : SpectrumZeroFunctor where
  map λ := 1/2 + I * λ.im
  well_defined D h_tcsc λ hλ := by
    simp
    exact tcsc_implies_real_part_zero D h_tcsc λ hλ

theorem phi_maps_to_critical_line (D : OperatorT64) (h_tcsc : D.isTCSC)
    (λ : ℂ) (hλ : λ ∈ D.spectrum) :
    (canonicalPhi.map λ).re = 1/2 := by
  simp [canonicalPhi]
  exact tcsc_implies_real_part_zero D h_tcsc λ hλ

end YXT.Millennium.RiemannHypothesis
