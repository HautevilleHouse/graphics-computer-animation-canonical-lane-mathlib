import GraphicsComputerAnimationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure AnimationObject where
  skeleton : Type
  keyframeData : Type
  blendShapes : Type
  interpolationRules : Prop
  skeletonConsistent : Prop
  keyframeSampled : Prop
  blendShapeTopology : Prop
  interpolationRuleSet : Prop
  continuity : skeletonConsistent ∧ keyframeSampled ∧ blendShapeTopology ∧ interpolationRuleSet

structure AnimAdmittedClass where
  object : AnimationObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def AnimWitnessClosed (O : AnimationObject) : Prop :=
  O.interpolationRules ∧ O.blendShapeTopology

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse
