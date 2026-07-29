import GraphicsComputerAnimationCanonicalLaneLean.TransformChainBridge

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure SceneGraphPackage {T : TransformChainPackage} where
  nodes : Type
  boundingVolumes : Prop
  spatialPartitioning : Prop
  traversalEfficiency : Prop
  occlusionCulling : Prop
  boundsComputed : Prop
  partitionBalanced : Prop
  traversalOptimized : Prop
  occlusionEffective : Prop

def SceneGraphClosed {T : TransformChainPackage} (S : SceneGraphPackage T) : Prop :=
  S.boundsComputed ∧ S.partitionBalanced ∧ S.traversalOptimized ∧ S.occlusionEffective

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse
