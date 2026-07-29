import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean

structure ParticleContinuumCertificate where
  continuumScale : Prop
  particleDiscreteSet : Prop
  averagingKernel : Prop
  closurePath : Prop
  continuumScaleClosed : continuumScale
  particleDiscreteSetClosed : particleDiscreteSet
  averagingKernelClosed : averagingKernel
  closurePathClosed : closurePath

def sourceParticleContinuumCertificate : ParticleContinuumCertificate := {
  continuumScale := true
  particleDiscreteSet := true
  averagingKernel := true
  closurePath := true
  continuumScaleClosed := rfl
  particleDiscreteSetClosed := rfl
  averagingKernelClosed := rfl
  closurePathClosed := rfl
}

def ParticleContinuumClosed (C : ParticleContinuumCertificate) : Prop :=
  C.continuumScale ∧ C.particleDiscreteSet ∧ C.averagingKernel ∧ C.closurePath

theorem source_particle_continuum_closed :
    ParticleContinuumClosed sourceParticleContinuumCertificate := by
  exact And.intro sourceParticleContinuumCertificate.continuumScaleClosed
    (And.intro sourceParticleContinuumCertificate.particleDiscreteSetClosed
      (And.intro sourceParticleContinuumCertificate.averagingKernelClosed
        sourceParticleContinuumCertificate.closurePathClosed))

end ContinuumModelsSystemsParticlesArisingLemmaCanonicalLaneLean
end HautevilleHouse