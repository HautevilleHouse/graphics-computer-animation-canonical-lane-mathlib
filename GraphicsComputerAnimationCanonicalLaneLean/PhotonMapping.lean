import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure PhotonMappingPackage where
  photonEmission : Prop
  photonPropagation : Prop
  photonStorage : Prop
  densityEstimation : Prop
  radianceReconstruction : Prop
  biasVarianceControl : Prop

structure PhotonMappingEvidence (P : PhotonMappingPackage) where
  photonEmissionClosed : P.photonEmission
  photonPropagationClosed : P.photonPropagation
  photonStorageClosed : P.photonStorage
  densityEstimationClosed : P.densityEstimation
  radianceReconstructionClosed : P.radianceReconstruction
  biasVarianceControlClosed : P.biasVarianceControl

def PhotonMappingClosed (P : PhotonMappingPackage) : Prop :=
  P.photonEmission ∧ P.photonPropagation ∧ P.photonStorage ∧
  P.densityEstimation ∧ P.radianceReconstruction ∧ P.biasVarianceControl

theorem photon_mapping_closed_from_evidence (P : PhotonMappingPackage)
    (E : PhotonMappingEvidence P) : PhotonMappingClosed P := by
  exact And.intro E.photonEmissionClosed
    (And.intro E.photonPropagationClosed
      (And.intro E.photonStorageClosed
        (And.intro E.densityEstimationClosed
          (And.intro E.radianceReconstructionClosed E.biasVarianceControlClosed))))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse