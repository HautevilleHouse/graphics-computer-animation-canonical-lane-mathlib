import GraphicsComputerAnimationCanonicalLaneLean.AnimationDataStructure

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure TransformChainPackage where
  parentChain : Type
  localToWorld : Prop
  worldToScreen : Prop
  skinningMatrix : Prop
  hierarchyConsistent : Prop
  matrixComposition : Prop
  skinningCorrect : Prop

def TransformChainClosed (T : TransformChainPackage) : Prop :=
  T.hierarchyConsistent ∧ T.matrixComposition ∧ T.skinningCorrect

theorem transform_chain_from_evidence (T : TransformChainPackage) (hier : T.hierarchyConsistent) (mat : T.matrixComposition) (skin : T.skinningCorrect) :
    TransformChainClosed T := by
  exact And.intro hier (And.intro mat skin)

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse
