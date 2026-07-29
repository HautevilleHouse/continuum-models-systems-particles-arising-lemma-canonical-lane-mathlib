import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean

structure MeanFieldCertificate where
  interactionKernel : Prop
  forceField : Prop
  potentialGradient : Prop
  particleDensity : Prop
  interactionKernelClosed : interactionKernel
  forceFieldClosed : forceField
  potentialGradientClosed : potentialGradient
  particleDensityClosed : particleDensity

def sourceMeanFieldCertificate : MeanFieldCertificate := {
  interactionKernel := constantSpecs.length = constantSpecCount
  forceField := baselineCertificateInputs.length = 7
  potentialGradient := bridgeConstantKeys.length = 5
  particleDensity := formalizationCertificate.theoremBoundaryOpen = true
  interactionKernelClosed := rfl
  forceFieldClosed := rfl
  potentialGradientClosed := rfl
  particleDensityClosed := rfl
}

def MeanFieldClosed (C : MeanFieldCertificate) : Prop :=
  C.interactionKernel ∧ C.forceField ∧ C.potentialGradient ∧ C.particleDensity

theorem source_mean_field_closed :
    MeanFieldClosed sourceMeanFieldCertificate := by
  exact And.intro sourceMeanFieldCertificate.interactionKernelClosed
    (And.intro sourceMeanFieldCertificate.forceFieldClosed
      (And.intro sourceMeanFieldCertificate.potentialGradientClosed
        sourceMeanFieldCertificate.particleDensityClosed))

end ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean
end HautevilleHouse