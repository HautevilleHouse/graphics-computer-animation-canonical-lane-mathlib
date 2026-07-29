import canonicalLaneMathlib.AdmissibleClass
import GraphicsComputerAnimationCanonicalLaneLean.AnimationObject

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure LightingShadowsPackage (O : AnimationAdmittedObject) where
  globalIllumination : Prop
  shadowMapping : Prop
  physicallyBasedRendering : Prop
  ambientOcclusion : Prop

structure LightingShadowsEvidence {O : AnimationAdmittedObject} (L : LightingShadowsPackage O) where
  globalIlluminationClosed : L.globalIllumination
  shadowMappingClosed : L.shadowMapping
  physicallyBasedRenderingClosed : L.physicallyBasedRendering
  ambientOcclusionClosed : L.ambientOcclusion

def LightingShadowsClosed {O : AnimationAdmittedObject} (L : LightingShadowsPackage O) : Prop :=
  L.globalIllumination ∧ L.shadowMapping ∧ L.physicallyBasedRendering ∧ L.ambientOcclusion

theorem lighting_shadows_closed_from_evidence {O : AnimationAdmittedObject} (L : LightingShadowsPackage O) (E : LightingShadowsEvidence L) : LightingShadowsClosed L := by
  exact And.intro E.globalIlluminationClosed (And.intro E.shadowMappingClosed (And.intro E.physicallyBasedRenderingClosed E.ambientOcclusionClosed))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse