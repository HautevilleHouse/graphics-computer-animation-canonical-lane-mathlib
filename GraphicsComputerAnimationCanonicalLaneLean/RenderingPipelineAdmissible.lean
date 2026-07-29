import GraphicsComputerAnimationCanonicalLaneLean.AnimationDataStructure

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure RenderingPackage where
  vertexShader : Type
  fragmentShader : Type
  rasterizer : Type
  outputMerger : Type
  vertexProcessing : Prop
  fragmentProcessing : Prop
  rasterizationCorrect : Prop
  pixelBlending : Prop
  pipelineComplete : vertexProcessing ∧ fragmentProcessing ∧ rasterizationCorrect ∧ pixelBlending

structure RenderingEvidence (R : RenderingPackage) where
  vertexProcessingClosed : R.vertexProcessing
  fragmentProcessingClosed : R.fragmentProcessing
  rasterizationCorrectClosed : R.rasterizationCorrect
  pixelBlendingClosed : R.pixelBlending

def RenderingClosed (R : RenderingPackage) : Prop :=
  R.vertexProcessing ∧ R.fragmentProcessing ∧ R.rasterizationCorrect ∧ R.pixelBlending

theorem rendering_closed_from_evidence (R : RenderingPackage) (E : RenderingEvidence R) :
    RenderingClosed R := by
  exact And.intro E.vertexProcessingClosed
    (And.intro E.fragmentProcessingClosed
      (And.intro E.rasterizationCorrectClosed E.pixelBlendingClosed))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse
