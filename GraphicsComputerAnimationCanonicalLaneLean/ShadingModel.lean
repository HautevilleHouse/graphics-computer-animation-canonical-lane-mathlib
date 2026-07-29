import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure ShadingModelPackage where
  illuminationModel : Prop
  materialProperties : Prop
  lightTransport : Prop
  colorComputation : Prop

structure ShadingModelEvidence (S : ShadingModelPackage) where
  illuminationModelClosed : S.illuminationModel
  materialPropertiesClosed : S.materialProperties
  lightTransportClosed : S.lightTransport
  colorComputationClosed : S.colorComputation

def ShadingModelClosed (S : ShadingModelPackage) : Prop :=
  S.illuminationModel ∧ S.materialProperties ∧ S.lightTransport ∧ S.colorComputation

theorem shading_model_closed_from_evidence (S : ShadingModelPackage)
    (E : ShadingModelEvidence S) : ShadingModelClosed S := by
  exact And.intro E.illuminationModelClosed
    (And.intro E.materialPropertiesClosed
      (And.intro E.lightTransportClosed E.colorComputationClosed))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse