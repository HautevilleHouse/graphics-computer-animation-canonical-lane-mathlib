import canonicalLaneMathlib.AdmissibleClass
import GraphicsComputerAnimationCanonicalLaneLean.RenderingPass
import GraphicsComputerAnimationCanonicalLaneLean.PhysicsSimulation
import GraphicsComputerAnimationCanonicalLaneLean.SkinningRigging
import GraphicsComputerAnimationCanonicalLaneLean.LightingShadows

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | AnimationAdmittedObject.mk _ sdf cb ki _ => sdf ∧ cb ∧ ki

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedAnimationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  cases h : A.object
  case mk space sdf cb ki conc =>
    exact conc

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

theorem constrained_animation_endgame (A : AdmissibleClass) : ConstrainedAnimationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse