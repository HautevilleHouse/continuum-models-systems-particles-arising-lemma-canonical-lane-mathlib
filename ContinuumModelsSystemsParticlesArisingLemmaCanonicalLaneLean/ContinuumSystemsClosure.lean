import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean.ParticleContinuumLayer
import HautevilleHouse.ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean.HomogenizationLayer
import HautevilleHouse.ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean.KineticTransportLayer
import HautevilleHouse.ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean.StochasticCorrectionsLayer

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean

structure ContinuumSystemsCertificate where
  particleContinuum : ParticleContinuumCertificate
  homogenization : HomogenizationCertificate
  kineticTransport : KineticTransportCertificate
  stochasticCorrections : StochasticCorrectionsCertificate
  globalClosure : Prop
  particleContinuumClosed : ParticleContinuumClosed particleContinuum
  homogenizationClosed : HomogenizationClosed homogenization
  kineticTransportClosed : KineticTransportClosed kineticTransport
  stochasticCorrectionsClosed : StochasticCorrectionsClosed stochasticCorrections
  globalClosureClosed : globalClosure

def sourceContinuumSystemsCertificate : ContinuumSystemsCertificate := {
  particleContinuum := sourceParticleContinuumCertificate
  homogenization := sourceHomogenizationCertificate
  kineticTransport := sourceKineticTransportCertificate
  stochasticCorrections := sourceStochasticCorrectionsCertificate
  globalClosure := true
  particleContinuumClosed := source_particle_continuum_closed
  homogenizationClosed := source_homogenization_closed
  kineticTransportClosed := source_kinetic_transport_closed
  stochasticCorrectionsClosed := source_stochastic_corrections_closed
  globalClosureClosed := rfl
}

def ContinuumSystemsClosed (C : ContinuumSystemsCertificate) : Prop :=
  ParticleContinuumClosed C.particleContinuum ∧
  HomogenizationClosed C.homogenization ∧
  KineticTransportClosed C.kineticTransport ∧
  StochasticCorrectionsClosed C.stochasticCorrections ∧
  C.globalClosure

theorem source_continuum_systems_closed :
    ContinuumSystemsClosed sourceContinuumSystemsCertificate := by
  exact And.intro sourceContinuumSystemsCertificate.particleContinuumClosed
    (And.intro sourceContinuumSystemsCertificate.homogenizationClosed
      (And.intro sourceContinuumSystemsCertificate.kineticTransportClosed
        (And.intro sourceContinuumSystemsCertificate.stochasticCorrectionsClosed
          sourceContinuumSystemsCertificate.globalClosureClosed)))

end ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean
end HautevilleHouse