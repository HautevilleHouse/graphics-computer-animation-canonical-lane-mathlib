import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure RenderingPipelinePackage where
  geometryStage : Prop
  rasterizationStage : Prop
  shadingStage : Prop
  compositingStage : Prop
  outputStage : Prop

def RenderingPipelineClosed (R : RenderingPipelinePackage) : Prop :=
  R.geometryStage ∧ R.rasterizationStage ∧ R.shadingStage ∧ R.compositingStage ∧ R.outputStage

structure RenderingPipelineEvidence (R : RenderingPipelinePackage) where
  geometryStageClosed : R.geometryStage
  rasterizationStageClosed : R.rasterizationStage
  shadingStageClosed : R.shadingStage
  compositingStageClosed : R.compositingStage
  outputStageClosed : R.outputStage

theorem rendering_pipeline_closed_from_evidence (R : RenderingPipelinePackage) (E : RenderingPipelineEvidence R) : RenderingPipelineClosed R := by
  exact And.intro E.geometryStageClosed
    (And.intro E.rasterizationStageClosed
      (And.intro E.shadingStageClosed
        (And.intro E.compositingStageClosed E.outputStageClosed)))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse