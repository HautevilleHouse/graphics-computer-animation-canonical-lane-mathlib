import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure DeformationShadingPackage where
  skinning : Prop
  blendShapes : Prop
  morphTargets : Prop
  vertexShading : Prop
  pixelShading : Prop
  tessellation : Prop

def DeformationShadingClosed (D : DeformationShadingPackage) : Prop :=
  D.skinning ∧ D.blendShapes ∧ D.morphTargets ∧ D.vertexShading ∧ D.pixelShading ∧ D.tessellation

structure DeformationShadingEvidence (D : DeformationShadingPackage) where
  skinningClosed : D.skinning
  blendShapesClosed : D.blendShapes
  morphTargetsClosed : D.morphTargets
  vertexShadingClosed : D.vertexShading
  pixelShadingClosed : D.pixelShading
  tessellationClosed : D.tessellation

theorem deformation_shading_closed_from_evidence (D : DeformationShadingPackage) (E : DeformationShadingEvidence D) : DeformationShadingClosed D := by
  exact And.intro E.skinningClosed
    (And.intro E.blendShapesClosed
      (And.intro E.morphTargetsClosed
        (And.intro E.vertexShadingClosed
          (And.intro E.pixelShadingClosed E.tessellationClosed))))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse