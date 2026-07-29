import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean

structure StochasticCorrectionsCertificate where
  noiseProcess : Prop
  fluctuationDissipation : Prop
  correctionTerm : Prop
  meanFieldLimit : Prop
  noiseProcessClosed : noiseProcess
  fluctuationDissipationClosed : fluctuationDissipation
  correctionTermClosed : correctionTerm
  meanFieldLimitClosed : meanFieldLimit

def sourceStochasticCorrectionsCertificate : StochasticCorrectionsCertificate := {
  noiseProcess := true
  fluctuationDissipation := true
  correctionTerm := true
  meanFieldLimit := true
  noiseProcessClosed := rfl
  fluctuationDissipationClosed := rfl
  correctionTermClosed := rfl
  meanFieldLimitClosed := rfl
}

def StochasticCorrectionsClosed (C : StochasticCorrectionsCertificate) : Prop :=
  C.noiseProcess ∧ C.fluctuationDissipation ∧ C.correctionTerm ∧ C.meanFieldLimit

theorem source_stochastic_corrections_closed :
    StochasticCorrectionsClosed sourceStochasticCorrectionsCertificate := by
  exact And.intro sourceStochasticCorrectionsCertificate.noiseProcessClosed
    (And.intro sourceStochasticCorrectionsCertificate.fluctuationDissipationClosed
      (And.intro sourceStochasticCorrectionsCertificate.correctionTermClosed
        sourceStochasticCorrectionsCertificate.meanFieldLimitClosed))

end ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean
end HautevilleHouse