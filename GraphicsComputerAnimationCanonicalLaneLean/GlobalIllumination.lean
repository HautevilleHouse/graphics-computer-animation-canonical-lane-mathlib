import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure GlobalIlluminationPackage where
  rayTracing : Prop
  pathTracing : Prop
  photonMapping : Prop
  ambientOcclusion : Prop
  indirectDiffuse : Prop
  indirectSpecular : Prop
  environmentLighting : Prop

def GlobalIlluminationClosed (G : GlobalIlluminationPackage) : Prop :=
  G.rayTracing ∧ G.pathTracing ∧ G.photonMapping ∧ G.ambientOcclusion ∧ G.indirectDiffuse ∧ G.indirectSpecular ∧ G.environmentLighting

structure GlobalIlluminationEvidence (G : GlobalIlluminationPackage) where
  rayTracingClosed : G.rayTracing
  pathTracingClosed : G.pathTracing
  photonMappingClosed : G.photonMapping
  ambientOcclusionClosed : G.ambientOcclusion
  indirectDiffuseClosed : G.indirectDiffuse
  indirectSpecularClosed : G.indirectSpecular
  environmentLightingClosed : G.environmentLighting

theorem global_illumination_closed_from_evidence (G : GlobalIlluminationPackage) (E : GlobalIlluminationEvidence G) : GlobalIlluminationClosed G := by
  exact And.intro E.rayTracingClosed
    (And.intro E.pathTracingClosed
      (And.intro E.photonMappingClosed
        (And.intro E.ambientOcclusionClosed
          (And.intro E.indirectDiffuseClosed
            (And.intro E.indirectSpecularClosed E.environmentLightingClosed)))))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse