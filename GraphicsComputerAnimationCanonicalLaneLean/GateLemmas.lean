import GraphicsComputerAnimationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

def gateClosed (A : AnimAdmittedClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AnimAdmittedClass) :
    gateClosed A := by
  exact A.gateWitness

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse
