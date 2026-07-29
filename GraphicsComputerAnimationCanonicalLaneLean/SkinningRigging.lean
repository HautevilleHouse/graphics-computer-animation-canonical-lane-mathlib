import canonicalLaneMathlib.AdmissibleClass
import GraphicsComputerAnimationCanonicalLaneLean.AnimationObject

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure SkinningRiggingPackage (O : AnimationAdmittedObject) where
  skeletonHierarchy : Prop
  blendWeights : Prop
  dualQuaternionSkinning : Prop
  correctiveMorphTargets : Prop

structure SkinningRiggingEvidence {O : AnimationAdmittedObject} (S : SkinningRiggingPackage O) where
  skeletonHierarchyClosed : S.skeletonHierarchy
  blendWeightsClosed : S.blendWeights
  dualQuaternionSkinningClosed : S.dualQuaternionSkinning
  correctiveMorphTargetsClosed : S.correctiveMorphTargets

def SkinningRiggingClosed {O : AnimationAdmittedObject} (S : SkinningRiggingPackage O) : Prop :=
  S.skeletonHierarchy ∧ S.blendWeights ∧ S.dualQuaternionSkinning ∧ S.correctiveMorphTargets

theorem skinning_rigging_closed_from_evidence {O : AnimationAdmittedObject} (S : SkinningRiggingPackage O) (E : SkinningRiggingEvidence S) : SkinningRiggingClosed S := by
  exact And.intro E.skeletonHierarchyClosed (And.intro E.blendWeightsClosed (And.intro E.dualQuaternionSkinningClosed E.correctiveMorphTargetsClosed))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse