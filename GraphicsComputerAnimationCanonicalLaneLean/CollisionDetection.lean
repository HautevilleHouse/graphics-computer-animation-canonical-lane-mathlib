import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure CollisionDetectionPackage where
  boundingVolumeHierarchy : Type u
  primitiveIntersectionTests : Type v
  broadPhase : Prop
  narrowPhase : Prop
  continuousCollision : Prop
  selfCollision : Prop

structure CollisionDetectionEvidence (C : CollisionDetectionPackage) where
  broadPhaseClosed : C.broadPhase
  narrowPhaseClosed : C.narrowPhase
  continuousCollisionClosed : C.continuousCollision
  selfCollisionClosed : C.selfCollision

def CollisionDetectionClosed (C : CollisionDetectionPackage) : Prop :=
  C.broadPhase ∧ C.narrowPhase ∧ C.continuousCollision ∧ C.selfCollision

theorem collision_detection_closed_from_evidence
    (C : CollisionDetectionPackage)
    (E : CollisionDetectionEvidence C) : CollisionDetectionClosed C := by
  exact And.intro E.broadPhaseClosed
    (And.intro E.narrowPhaseClosed
      (And.intro E.continuousCollisionClosed E.selfCollisionClosed))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse