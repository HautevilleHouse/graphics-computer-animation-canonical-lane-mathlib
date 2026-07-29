import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsComputerAnimationCanonicalLaneLean

structure SpatialSubdivisionPackage where
  octree : Prop
  bspTree : Prop
  kdTree : Prop
  grid : Prop
  boundingVolumeHierarchy : Prop
  hashGrid : Prop

def SpatialSubdivisionClosed (S : SpatialSubdivisionPackage) : Prop :=
  S.octree ∧ S.bspTree ∧ S.kdTree ∧ S.grid ∧ S.boundingVolumeHierarchy ∧ S.hashGrid

structure SpatialSubdivisionEvidence (S : SpatialSubdivisionPackage) where
  octreeClosed : S.octree
  bspTreeClosed : S.bspTree
  kdTreeClosed : S.kdTree
  gridClosed : S.grid
  boundingVolumeHierarchyClosed : S.boundingVolumeHierarchy
  hashGridClosed : S.hashGrid

theorem spatial_subdivision_closed_from_evidence (S : SpatialSubdivisionPackage) (E : SpatialSubdivisionEvidence S) : SpatialSubdivisionClosed S := by
  exact And.intro E.octreeClosed
    (And.intro E.bspTreeClosed
      (And.intro E.kdTreeClosed
        (And.intro E.gridClosed
          (And.intro E.boundingVolumeHierarchyClosed E.hashGridClosed))))

end GraphicsComputerAnimationCanonicalLaneLean
end HautevilleHouse