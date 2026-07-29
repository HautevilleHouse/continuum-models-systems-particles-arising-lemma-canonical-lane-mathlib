import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean

structure ArisingConfiguration where
  continuum : ContinuumMeasure
  particles : ParticleSystem
  coupling : Prop

definition ArisingLemmaClosed (C : ArisingConfiguration) : Prop :=
  ContinuumMeasureClosed C.continuum ∧ ParticleSystemClosed C.particles ∧ C.coupling

theorem arising_lemma_close (C : ArisingConfiguration) (h : ArisingLemmaClosed C) :
    ArisingLemmaClosed C := h

end ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean
end HautevilleHouse