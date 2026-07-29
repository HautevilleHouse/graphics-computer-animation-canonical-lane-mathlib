import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure SkinningAndBlendingPackage where
  skeletonHierarchy : Type u
  skinWeights : Type v
  vertexDeformation : Type w
  linearBlendSkinning : Prop
  dualQuaternionBlending : Prop
  shapeInterpolation : Prop

structure SkinningAndBlendingEvidence (S : SkinningAndBlendingPackage) where
  linearBlendSkinningClosed : S.linearBlendSkinning
  dualQuaternionBlendingClosed : S.dualQuaternionBlending
  shapeInterpolationClosed : S.shapeInterpolation

def SkinningAndBlendingClosed (S : SkinningAndBlendingPackage) : Prop :=
  S.linearBlendSkinning ∧ S.dualQuaternionBlending ∧ S.shapeInterpolation

theorem skinning_and_blending_closed_from_evidence
    (S : SkinningAndBlendingPackage)
    (E : SkinningAndBlendingEvidence S) : SkinningAndBlendingClosed S := by
  exact And.intro E.linearBlendSkinningClosed
    (And.intro E.dualQuaternionBlendingClosed E.shapeInterpolationClosed)

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse