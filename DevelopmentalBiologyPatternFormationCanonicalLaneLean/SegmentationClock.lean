import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure SegmentationClockPackage where
  oscillatorGene : Type
  period : ℝ
  couplingStrength : ℝ
  phaseWavePropagation : Prop
  somiteBoudaryFormation : Prop
  robustnessToPerturbations : Prop

structure SegmentationClockEvidence (S : SegmentationClockPackage) where
  phaseWavePropagationClosed : S.phaseWavePropagation
  somiteBoudaryFormationClosed : S.somiteBoudaryFormation
  robustnessToPerturbationsClosed : S.robustnessToPerturbations

def SegmentationClockClosed (S : SegmentationClockPackage) : Prop :=
  S.phaseWavePropagation ∧ S.somiteBoudaryFormation ∧ S.robustnessToPerturbations

theorem segmentation_clock_closed_from_evidence (S : SegmentationClockPackage)
    (E : SegmentationClockEvidence S) : SegmentationClockClosed S := by
  exact And.intro E.phaseWavePropagationClosed
    (And.intro E.somiteBoudaryFormationClosed E.robustnessToPerturbationsClosed)

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse