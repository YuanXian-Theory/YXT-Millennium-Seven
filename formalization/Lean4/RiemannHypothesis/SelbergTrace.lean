import YXTT2.0.Operator.Basic
import YXTT2.0.Core.TCSC

namespace YXT.Millennium.RiemannHypothesis

/-- Correspondence between Selberg trace formula and Guinand-Weil explicit formula -/
theorem selberg_trace_correspondence (D : OperatorT64) (h_tcsc : D.isTCSC) :
    ∀ (f : ℝ → ℂ), trace_heat_kernel D f = guinand_weil_formula f := by
  sorry

/-- Surjectivity of the Spectrum-Zero Functor -/
theorem phi_is_surjective (D : OperatorT64) (h_tcsc : D.isTCSC) :
    ∀ ρ ∈ riemannZeros, ∃ λ ∈ D.spectrum, canonicalPhi.map λ = ρ := by
  sorry

end YXT.Millennium.RiemannHypothesis
