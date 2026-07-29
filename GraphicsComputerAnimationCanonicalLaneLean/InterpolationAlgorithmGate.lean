import GraphicsComputerAnimationCanonicalLaneLean.AnimationDataStructure

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure InterpolationPackage where
  linearCatmullRom : Prop
  bezierCurves : Prop
  splineInterpolation : Prop
  quaternionSlerp : Prop
  linearDefined : Prop
  bezierDefined : Prop
  splineDefined : Prop
  slerpDefined : Prop

def InterpolationClosed (I : InterpolationPackage) : Prop :=
  I.linearDefined ∧ I.bezierDefined ∧ I.splineDefined ∧ I.slerpDefined

structure InterpolationEvidence (I : InterpolationPackage) where
  linearDefinedClosed : I.linearDefined
  bezierDefinedClosed : I.bezierDefined
  splineDefinedClosed : I.splineDefined
  slerpDefinedClosed : I.slerpDefined

theorem interpolation_closed_from_evidence (I : InterpolationPackage) (E : InterpolationEvidence I) :
    InterpolationClosed I := by
  exact And.intro E.linearDefinedClosed
    (And.intro E.bezierDefinedClosed
      (And.intro E.splineDefinedClosed E.slerpDefinedClosed))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse
