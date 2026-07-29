import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure TransformationHierarchyPackage where
  modelTransform : Prop
  viewTransform : Prop
  projectionTransform : Prop
  viewportTransform : Prop

structure TransformationHierarchyEvidence (T : TransformationHierarchyPackage) where
  modelTransformClosed : T.modelTransform
  viewTransformClosed : T.viewTransform
  projectionTransformClosed : T.projectionTransform
  viewportTransformClosed : T.viewportTransform

def TransformationHierarchyClosed (T : TransformationHierarchyPackage) : Prop :=
  T.modelTransform ∧ T.viewTransform ∧ T.projectionTransform ∧ T.viewportTransform

theorem transformation_hierarchy_closed_from_evidence (T : TransformationHierarchyPackage)
    (E : TransformationHierarchyEvidence T) : TransformationHierarchyClosed T := by
  exact And.intro E.modelTransformClosed
    (And.intro E.viewTransformClosed
      (And.intro E.projectionTransformClosed E.viewportTransformClosed))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse