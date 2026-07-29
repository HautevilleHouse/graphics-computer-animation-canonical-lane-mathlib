import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure AnimationPhysicsPackage where
  rigidBodyDynamics : Prop
  softBodyDynamics : Prop
  collisionDetection : Prop
  constraintSolver : Prop
  articulationModel : Prop

def AnimationPhysicsClosed (A : AnimationPhysicsPackage) : Prop :=
  A.rigidBodyDynamics ∧ A.softBodyDynamics ∧ A.collisionDetection ∧ A.constraintSolver ∧ A.articulationModel

structure AnimationPhysicsEvidence (A : AnimationPhysicsPackage) where
  rigidBodyDynamicsClosed : A.rigidBodyDynamics
  softBodyDynamicsClosed : A.softBodyDynamics
  collisionDetectionClosed : A.collisionDetection
  constraintSolverClosed : A.constraintSolver
  articulationModelClosed : A.articulationModel

theorem animation_physics_closed_from_evidence (A : AnimationPhysicsPackage) (E : AnimationPhysicsEvidence A) : AnimationPhysicsClosed A := by
  exact And.intro E.rigidBodyDynamicsClosed
    (And.intro E.softBodyDynamicsClosed
      (And.intro E.collisionDetectionClosed
        (And.intro E.constraintSolverClosed E.articulationModelClosed)))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse