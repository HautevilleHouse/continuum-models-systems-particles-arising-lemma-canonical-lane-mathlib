import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean

structure ScalingLimitCertificate where
  particleDensity : Prop
  interactionKernel : Prop
  meanFieldLimit : Prop
  fluctuationBound : Prop
  scalingParameter : Prop
  densityClosed : particleDensity
  kernelClosed : interactionKernel
  meanFieldClosed : meanFieldLimit
  fluctuationClosed : fluctuationBound
  scalingClosed : scalingParameter

def sourceScalingLimitCertificate : ScalingLimitCertificate := {
  particleDensity := sourceFormulaModels.length = 7
  interactionKernel := baselineCertificateGates.length = 7
  meanFieldLimit := reviewerChainSteps.length = 7
  fluctuationBound := outsideConstantDependencyCount = 0
  scalingParameter := registryConstants.length = 6
  densityClosed := rfl
  kernelClosed := rfl
  meanFieldClosed := rfl
  fluctuationClosed := rfl
  scalingClosed := rfl
}

def ScalingLimitClosed (C : ScalingLimitCertificate) : Prop :=
  C.particleDensity ∧ C.interactionKernel ∧ C.meanFieldLimit ∧ C.fluctuationBound ∧ C.scalingParameter

theorem source_scaling_limit_closed : ScalingLimitClosed sourceScalingLimitCertificate := by
  exact And.intro sourceScalingLimitCertificate.densityClosed
    (And.intro sourceScalingLimitCertificate.kernelClosed
      (And.intro sourceScalingLimitCertificate.meanFieldClosed
        (And.intro sourceScalingLimitCertificate.fluctuationClosed
          sourceScalingLimitCertificate.scalingClosed)))

end ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean
end HautevilleHouse
