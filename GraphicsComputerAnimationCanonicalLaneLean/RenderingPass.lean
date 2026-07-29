import canonicalLaneMathlib.AdmissibleClass
import GraphicsComputerAnimationCanonicalLaneLean.AnimationObject

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure RenderingPassPackage (O : AnimationAdmittedObject) where
  rasterizationPipeline : Prop
  shadingModel : Prop
  antiAliasing : Prop
  postProcessing : Prop

structure RenderingPassEvidence {O : AnimationAdmittedObject} (R : RenderingPassPackage O) where
  rasterizationPipelineClosed : R.rasterizationPipeline
  shadingModelClosed : R.shadingModel
  antiAliasingClosed : R.antiAliasing
  postProcessingClosed : R.postProcessing

def RenderingPassClosed {O : AnimationAdmittedObject} (R : RenderingPassPackage O) : Prop :=
  R.rasterizationPipeline ∧ R.shadingModel ∧ R.antiAliasing ∧ R.postProcessing

theorem rendering_pass_closed_from_evidence {O : AnimationAdmittedObject} (R : RenderingPassPackage O) (E : RenderingPassEvidence R) : RenderingPassClosed R := by
  exact And.intro E.rasterizationPipelineClosed (And.intro E.shadingModelClosed (And.intro E.antiAliasingClosed E.postProcessingClosed))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse