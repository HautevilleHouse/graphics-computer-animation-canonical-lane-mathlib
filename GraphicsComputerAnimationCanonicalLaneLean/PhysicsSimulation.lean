import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure PhysicsSimulationPackage where
  rigidBodyDynamics : Prop
  collisionDetection : Prop
  constraintSolver : Prop
  integrator : Prop

structure PhysicsSimulationEvidence (P : PhysicsSimulationPackage) where
  rigidBodyDynamicsClosed : P.rigidBodyDynamics
  collisionDetectionClosed : P.collisionDetection
  constraintSolverClosed : P.constraintSolver
  integratorClosed : P.integrator

def PhysicsSimulationClosed (P : PhysicsSimulationPackage) : Prop :=
  P.rigidBodyDynamics ∧ P.collisionDetection ∧ P.constraintSolver ∧ P.integrator

theorem physics_simulation_closed_from_evidence (P : PhysicsSimulationPackage)
    (E : PhysicsSimulationEvidence P) : PhysicsSimulationClosed P := by
  exact And.intro E.rigidBodyDynamicsClosed
    (And.intro E.collisionDetectionClosed
      (And.intro E.constraintSolverClosed E.integratorClosed))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse