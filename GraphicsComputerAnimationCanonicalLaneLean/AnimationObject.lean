import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure AnimatableSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AnimationAdmittedObject where
  space : AnimatableSpace
  signedDistanceField : Prop
  collisionBoundary : Prop
  keyframeInterpolation : Prop
  conclusion : signedDistanceField ∧ collisionBoundary ∧ keyframeInterpolation

structure AnimationEndgameState where
  object : AnimationAdmittedObject

def AnimationWitnessClosed (O : AnimationAdmittedObject) : Prop :=
  O.conclusion

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse