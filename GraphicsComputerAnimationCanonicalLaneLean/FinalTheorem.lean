import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

def ConstrainedGraphicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graphic_endgame (A : AdmissibleClass) :
    ConstrainedGraphicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse