import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure AnimationBlendingPackage where
  skeletalAnimation : Prop
  keyframeInterpolation : Prop
  blendShapes : Prop
  stateMachine : Prop

structure AnimationBlendingEvidence (A : AnimationBlendingPackage) where
  skeletalAnimationClosed : A.skeletalAnimation
  keyframeInterpolationClosed : A.keyframeInterpolation
  blendShapesClosed : A.blendShapes
  stateMachineClosed : A.stateMachine

def AnimationBlendingClosed (A : AnimationBlendingPackage) : Prop :=
  A.skeletalAnimation ∧ A.keyframeInterpolation ∧ A.blendShapes ∧ A.stateMachine

theorem animation_blending_closed_from_evidence (A : AnimationBlendingPackage)
    (E : AnimationBlendingEvidence A) : AnimationBlendingClosed A := by
  exact And.intro E.skeletalAnimationClosed
    (And.intro E.keyframeInterpolationClosed
      (And.intro E.blendShapesClosed E.stateMachineClosed))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse