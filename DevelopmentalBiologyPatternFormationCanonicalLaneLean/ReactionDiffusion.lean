import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure ReactionDiffusionPackage where
  morphogen : Type
  inhibitor : Type
  reactionKinetics : Prop
  diffusionRates : ℝ × ℝ
  turingInstabilityCondition : Prop
  patternWavelength : ℝ

structure ReactionDiffusionEvidence (R : ReactionDiffusionPackage) where
  reactionKineticsClosed : R.reactionKinetics
  turingInstabilityConditionClosed : R.turingInstabilityCondition

def ReactionDiffusionClosed (R : ReactionDiffusionPackage) : Prop :=
  R.reactionKinetics ∧ R.turingInstabilityCondition

theorem reaction_diffusion_closed_from_evidence (R : ReactionDiffusionPackage)
    (E : ReactionDiffusionEvidence R) : ReactionDiffusionClosed R := by
  exact And.intro E.reactionKineticsClosed E.turingInstabilityConditionClosed

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse