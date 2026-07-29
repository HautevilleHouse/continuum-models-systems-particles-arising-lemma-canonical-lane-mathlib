import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean

def ConstrainedContinuumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuum_endgame (A : AdmissibleClass) :
    ConstrainedContinuumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean
end HautevilleHouse