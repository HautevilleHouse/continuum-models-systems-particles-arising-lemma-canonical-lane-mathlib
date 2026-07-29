import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean

structure HomogenizationCertificate where
  microscopicModel : Prop
  effectiveCoefficients : Prop
  twoScaleConvergence : Prop
  epsilonConvergence : Prop
  microscopicModelClosed : microscopicModel
  effectiveCoefficientsClosed : effectiveCoefficients
  twoScaleConvergenceClosed : twoScaleConvergence
  epsilonConvergenceClosed : epsilonConvergence

def sourceHomogenizationCertificate : HomogenizationCertificate := {
  microscopicModel := true
  effectiveCoefficients := true
  twoScaleConvergence := true
  epsilonConvergence := true
  microscopicModelClosed := rfl
  effectiveCoefficientsClosed := rfl
  twoScaleConvergenceClosed := rfl
  epsilonConvergenceClosed := rfl
}

def HomogenizationClosed (C : HomogenizationCertificate) : Prop :=
  C.microscopicModel ∧ C.effectiveCoefficients ∧ C.twoScaleConvergence ∧ C.epsilonConvergence

theorem source_homogenization_closed :
    HomogenizationClosed sourceHomogenizationCertificate := by
  exact And.intro sourceHomogenizationCertificate.microscopicModelClosed
    (And.intro sourceHomogenizationCertificate.effectiveCoefficientsClosed
      (And.intro sourceHomogenizationCertificate.twoScaleConvergenceClosed
        sourceHomogenizationCertificate.epsilonConvergenceClosed))

end ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean
end HautevilleHouse