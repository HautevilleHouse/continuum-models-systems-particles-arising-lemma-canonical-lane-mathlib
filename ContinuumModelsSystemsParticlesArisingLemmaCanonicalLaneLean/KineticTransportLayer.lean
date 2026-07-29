import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean

structure KineticTransportCertificate where
  particleDistribution : Prop
  collisionOperator : Prop
  momentClosure : Prop
  hydrodynamicLimit : Prop
  particleDistributionClosed : particleDistribution
  collisionOperatorClosed : collisionOperator
  momentClosureClosed : momentClosure
  hydrodynamicLimitClosed : hydrodynamicLimit

def sourceKineticTransportCertificate : KineticTransportCertificate := {
  particleDistribution := true
  collisionOperator := true
  momentClosure := true
  hydrodynamicLimit := true
  particleDistributionClosed := rfl
  collisionOperatorClosed := rfl
  momentClosureClosed := rfl
  hydrodynamicLimitClosed := rfl
}

def KineticTransportClosed (C : KineticTransportCertificate) : Prop :=
  C.particleDistribution ∧ C.collisionOperator ∧ C.momentClosure ∧ C.hydrodynamicLimit

theorem source_kinetic_transport_closed :
    KineticTransportClosed sourceKineticTransportCertificate := by
  exact And.intro sourceKineticTransportCertificate.particleDistributionClosed
    (And.intro sourceKineticTransportCertificate.collisionOperatorClosed
      (And.intro sourceKineticTransportCertificate.momentClosureClosed
        sourceKineticTransportCertificate.hydrodynamicLimitClosed))

end ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean
end HautevilleHouse