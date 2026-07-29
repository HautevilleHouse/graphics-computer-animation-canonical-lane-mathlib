import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure RasterizationPipelinePackage where
  vertexProcessing : Prop
  primitiveAssembly : Prop
  rasterization : Prop
  fragmentProcessing : Prop

structure RasterizationPipelineEvidence (P : RasterizationPipelinePackage) where
  vertexProcessingClosed : P.vertexProcessing
  primitiveAssemblyClosed : P.primitiveAssembly
  rasterizationClosed : P.rasterization
  fragmentProcessingClosed : P.fragmentProcessing

def RasterizationPipelineClosed (P : RasterizationPipelinePackage) : Prop :=
  P.vertexProcessing ∧ P.primitiveAssembly ∧ P.rasterization ∧ P.fragmentProcessing

theorem rasterization_pipeline_closed_from_evidence (P : RasterizationPipelinePackage)
    (E : RasterizationPipelineEvidence P) : RasterizationPipelineClosed P := by
  exact And.intro E.vertexProcessingClosed
    (And.intro E.primitiveAssemblyClosed
      (And.intro E.rasterizationClosed E.fragmentProcessingClosed))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse