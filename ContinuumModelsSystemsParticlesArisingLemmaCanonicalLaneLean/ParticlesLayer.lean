import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean

structure ParticleSystem where
  positions : List ℝ³
  velocities : List ℝ³
  forces : List (ℝ³ → ℝ³)
  wellDefined : positions.length = velocities.length ∧ velocities.length = forces.length

definition ParticleSystemClosed (P : ParticleSystem) : Prop :=
  ∀ i ∈ Fin (P.positions.length),
    (P.forces.get i) (P.positions.get i) = (P.velocities.get i).derivative

theorem particle_system_close (P : ParticleSystem) (h : ParticleSystemClosed P) :
    ParticleSystemClosed P := h

end ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean
end HautevilleHouse