import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure RigidBodyKinematicsPackage where
  rotationGroup : Type u
  translationSpace : Type v
  poseSpace : Type w
  homogeneousTransformation : Prop
  exponentialMap : Prop
  screwMotion : Prop

structure RigidBodyKinematicsEvidence (K : RigidBodyKinematicsPackage) where
  homogeneousTransformationClosed : K.homogeneousTransformation
  exponentialMapClosed : K.exponentialMap
  screwMotionClosed : K.screwMotion

def RigidBodyKinematicsClosed (K : RigidBodyKinematicsPackage) : Prop :=
  K.homogeneousTransformation ∧ K.exponentialMap ∧ K.screwMotion

theorem rigid_body_kinematics_closed_from_evidence
    (K : RigidBodyKinematicsPackage)
    (E : RigidBodyKinematicsEvidence K) : RigidBodyKinematicsClosed K := by
  exact And.intro E.homogeneousTransformationClosed
    (And.intro E.exponentialMapClosed E.screwMotionClosed)

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse