import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure PhysicsBasedDeformationPackage where
  meshTopology : Type u
  materialModel : Type v
  deformationGradient : Type w
  elasticEnergy : Prop
  timeIntegrationScheme : Prop
  massConservation : Prop

structure PhysicsBasedDeformationEvidence (D : PhysicsBasedDeformationPackage) where
  elasticEnergyClosed : D.elasticEnergy
  timeIntegrationSchemeClosed : D.timeIntegrationScheme
  massConservationClosed : D.massConservation

def PhysicsBasedDeformationClosed (D : PhysicsBasedDeformationPackage) : Prop :=
  D.elasticEnergy ∧ D.timeIntegrationScheme ∧ D.massConservation

theorem physics_based_deformation_closed_from_evidence
    (D : PhysicsBasedDeformationPackage)
    (E : PhysicsBasedDeformationEvidence D) : PhysicsBasedDeformationClosed D := by
  exact And.intro E.elasticEnergyClosed
    (And.intro E.timeIntegrationSchemeClosed E.massConservationClosed)

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse