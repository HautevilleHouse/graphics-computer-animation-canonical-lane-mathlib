import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure RenderingEquationPackage where
  visibilityFunction : Prop
  surfaceReflectance : Prop
  emittedRadiance : Prop
  incidentRadiance : Prop
  integrationDomain : Prop
  pathIntegralForm : Prop
  solutionExistence : Prop
  solutionUniqueness : Prop

structure RenderingEquationEvidence (R : RenderingEquationPackage) where
  visibilityFunctionClosed : R.visibilityFunction
  surfaceReflectanceClosed : R.surfaceReflectance
  emittedRadianceClosed : R.emittedRadiance
  incidentRadianceClosed : R.incidentRadiance
  integrationDomainClosed : R.integrationDomain
  pathIntegralFormClosed : R.pathIntegralForm
  solutionExistenceClosed : R.solutionExistence
  solutionUniquenessClosed : R.solutionUniqueness

def RenderingEquationClosed (R : RenderingEquationPackage) : Prop :=
  R.visibilityFunction ∧ R.surfaceReflectance ∧ R.emittedRadiance ∧
  R.incidentRadiance ∧ R.integrationDomain ∧ R.pathIntegralForm ∧
  R.solutionExistence ∧ R.solutionUniqueness

theorem rendering_equation_closed_from_evidence (R : RenderingEquationPackage)
    (E : RenderingEquationEvidence R) : RenderingEquationClosed R := by
  exact And.intro E.visibilityFunctionClosed
    (And.intro E.surfaceReflectanceClosed
      (And.intro E.emittedRadianceClosed
        (And.intro E.incidentRadianceClosed
          (And.intro E.integrationDomainClosed
            (And.intro E.pathIntegralFormClosed
              (And.intro E.solutionExistenceClosed E.solutionUniquenessClosed))))))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse