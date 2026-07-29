import GraphicsComputerAnimationCanonicalLaneLean.AnimationDataStructure

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure PhysicsPackage where
  collisionDetection : Prop
  rigidBodyDynamics : Prop
  softBodySimulation : Prop
  constraintSolver : Prop
  collisionAccurate : Prop
  dynamicsStable : Prop
  softBodyRealistic : Prop
  constraintsSolved : Prop

def PhysicsClosed (P : PhysicsPackage) : Prop :=
  P.collisionAccurate ∧ P.dynamicsStable ∧ P.softBodyRealistic ∧ P.constraintsSolved

structure PhysicsEvidence (P : PhysicsPackage) where
  collisionAccurateClosed : P.collisionAccurate
  dynamicsStableClosed : P.dynamicsStable
  softBodyRealisticClosed : P.softBodyRealistic
  constraintsSolvedClosed : P.constraintsSolved

theorem physics_closed_from_evidence (P : PhysicsPackage) (E : PhysicsEvidence P) :
    PhysicsClosed P := by
  exact And.intro E.collisionAccurateClosed
    (And.intro E.dynamicsStableClosed
      (And.intro E.softBodyRealisticClosed E.constraintsSolvedClosed))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse
