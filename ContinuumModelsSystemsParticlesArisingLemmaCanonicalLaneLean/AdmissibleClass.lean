import canonicalLaneMathlib.AdmissibleClass
import ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean
end HautevilleHouse