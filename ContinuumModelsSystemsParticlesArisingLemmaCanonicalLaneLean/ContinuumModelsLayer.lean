import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean

structure ContinuumMeasure where
  domain : Set ℝ³
  density : ℝ³ → ℝ
  totalMass : ℝ
totalMass_nonneg : totalMass ≥ 0

definition ContinuumMeasureClosed (M : ContinuumMeasure) : Prop :=
  ∀ x ∈ M.domain, M.density x ≥ 0 ∧ M.totalMass = ∫ x in M.domain, M.density x

theorem continuum_measure_close (M : ContinuumMeasure) (h : ContinuumMeasureClosed M) :
    ContinuumMeasureClosed M := h

end ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean
end HautevilleHouse