import GraphicsComputerAnimationCanonicalLaneLean.SceneGraphClosure

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure VisibilityPackage {T : TransformChainPackage} {S : SceneGraphPackage T} where
  viewFrustum : Prop
  occlusionQuery : Prop
  levelOfDetail : Prop
  sortOrder : Prop
  frustumTest : Prop
  occlusionTest : Prop
  lodSelection : Prop
  painterSort : Prop

def VisibilityClosed {T : TransformChainPackage} {S : SceneGraphPackage T} (V : VisibilityPackage T S) : Prop :=
  V.frustumTest ∧ V.occlusionTest ∧ V.lodSelection ∧ V.painterSort

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse
