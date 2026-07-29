import GraphicsComputerAnimationCanonicalLaneLean.AnimationDataStructure

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

def admittedClosure (A : AnimAdmittedClass) : Prop :=
  AnimWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse
