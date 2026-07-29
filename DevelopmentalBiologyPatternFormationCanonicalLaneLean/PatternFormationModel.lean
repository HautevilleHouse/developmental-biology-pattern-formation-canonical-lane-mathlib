import DevelopmentalBiologyPatternFormationCanonicalLaneLean.TuringInstability
import Mathlib.Dynamics.Flow

/-!
# Pattern Formation Model Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure PatternFormationModelPackage {P : ReactionDiffusionPDEPackage}
    {T : TuringInstabilityPackage P} where
  patternType : String
  wavelength : ℝ
  amplitude : ℝ
  symmetry : Prop
  stability : Prop

structure PatternFormationModelEvidence {P : ReactionDiffusionPDEPackage}
    {T : TuringInstabilityPackage P} (M : PatternFormationModelPackage P T) where
  patternTypeClosed : M.patternType = "spot" ∨ M.patternType = "stripe"
  wavelengthClosed : M.wavelength > 0
  amplitudeClosed : M.amplitude > 0
  symmetryClosed : M.symmetry
  stabilityClosed : M.stability

def PatternFormationModelClosed {P : ReactionDiffusionPDEPackage}
    {T : TuringInstabilityPackage P} (M : PatternFormationModelPackage P T) : Prop :=
  (M.patternType = "spot" ∨ M.patternType = "stripe") ∧
  M.wavelength > 0 ∧ M.amplitude > 0 ∧ M.symmetry ∧ M.stability

theorem pattern_formation_model_closed_from_evidence
    {P : ReactionDiffusionPDEPackage} {T : TuringInstabilityPackage P}
    (M : PatternFormationModelPackage P T)
    (E : PatternFormationModelEvidence M) : PatternFormationModelClosed M := by
  exact And.intro E.patternTypeClosed
    (And.intro E.wavelengthClosed
      (And.intro E.amplitudeClosed
        (And.intro E.symmetryClosed E.stabilityClosed)))

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse