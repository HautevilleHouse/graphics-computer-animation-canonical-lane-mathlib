import GraphicsComputerAnimationCanonicalLaneLean.AnimationDataStructure

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

def bridgeClosed (A : AnimAdmittedClass) : Prop :=
  AnimWitnessClosed A.object

theorem bridge_from_admissible_class (A : AnimAdmittedClass) :
    bridgeClosed A := by
  exact A.object.continuity.2.2.1

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse
