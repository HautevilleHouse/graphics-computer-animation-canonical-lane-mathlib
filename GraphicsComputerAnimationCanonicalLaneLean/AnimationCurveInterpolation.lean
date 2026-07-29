import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure AnimationCurvePackage where
  controlPoints : Type u
  interpolationKnots : Type v
  splineBasis : Type w
  curveSmoothnessClass : Nat
  continuityConstraint : Prop
  endpointInterpolation : Prop

structure AnimationCurveEvidence (C : AnimationCurvePackage) where
  curveSmoothnessClassClosed : C.curveSmoothnessClass ≥ 2
  continuityConstraintClosed : C.continuityConstraint
  endpointInterpolationClosed : C.endpointInterpolation

def AnimationCurveClosed (C : AnimationCurvePackage) : Prop :=
  C.curveSmoothnessClass ≥ 2 ∧ C.continuityConstraint ∧ C.endpointInterpolation

theorem animation_curve_closed_from_evidence (C : AnimationCurvePackage)
    (E : AnimationCurveEvidence C) : AnimationCurveClosed C := by
  exact And.intro E.curveSmoothnessClassClosed
    (And.intro E.continuityConstraintClosed E.endpointInterpolationClosed)

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse