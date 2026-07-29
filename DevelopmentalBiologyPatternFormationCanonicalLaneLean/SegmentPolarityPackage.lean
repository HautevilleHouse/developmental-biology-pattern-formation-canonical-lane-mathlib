import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure SegmentPolarityPackage where
  segmentCount : Nat
  polarityGenes : List ℕ
  geneRegulatoryNetwork : (ℕ → ℝ → ℝ)
  boundaryConditions : List ℝ
  polarizingGradientEstablished : Prop
  segmentBoundaryPrecision : ℝ

def segmentPolarityClosed (S : SegmentPolarityPackage) : Prop :=
  S.polarizingGradientEstablished ∧ S.segmentBoundaryPrecision > 0

theorem segment_polarity_closed (S : SegmentPolarityPackage) (hpg : S.polarizingGradientEstablished) (hbp : S.segmentBoundaryPrecision > 0) : segmentPolarityClosed S :=
  And.intro hpg hbp

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse