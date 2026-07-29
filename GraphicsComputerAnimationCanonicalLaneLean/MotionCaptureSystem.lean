import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure MotionCaptureSystemPackage where
  markerTracking : Prop
  inertialSensors : Prop
  opticalFlow : Prop
  poseEstimation : Prop
  inverseKinematics : Prop
  retargeting : Prop
  facialCapture : Prop

def MotionCaptureSystemClosed (M : MotionCaptureSystemPackage) : Prop :=
  M.markerTracking ∧ M.inertialSensors ∧ M.opticalFlow ∧ M.poseEstimation ∧ M.inverseKinematics ∧ M.retargeting ∧ M.facialCapture

structure MotionCaptureSystemEvidence (M : MotionCaptureSystemPackage) where
  markerTrackingClosed : M.markerTracking
  inertialSensorsClosed : M.inertialSensors
  opticalFlowClosed : M.opticalFlow
  poseEstimationClosed : M.poseEstimation
  inverseKinematicsClosed : M.inverseKinematics
  retargetingClosed : M.retargeting
  facialCaptureClosed : M.facialCapture

theorem motion_capture_system_closed_from_evidence (M : MotionCaptureSystemPackage) (E : MotionCaptureSystemEvidence M) : MotionCaptureSystemClosed M := by
  exact And.intro E.markerTrackingClosed
    (And.intro E.inertialSensorsClosed
      (And.intro E.opticalFlowClosed
        (And.intro E.poseEstimationClosed
          (And.intro E.inverseKinematicsClosed
            (And.intro E.retargetingClosed E.facialCaptureClosed)))))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse