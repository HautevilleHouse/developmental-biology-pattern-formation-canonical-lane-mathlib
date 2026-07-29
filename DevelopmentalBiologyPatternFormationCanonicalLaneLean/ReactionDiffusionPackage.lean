import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure ReactionDiffusionPackage where
  speciesCount : Nat
  diffusionCoefficients : List ℝ
  reactionTerms : List (ℝ → ℝ → ℝ)
  domainDimension : Nat
  turingInstabilityCondition : Prop
  patternFormationWavelength : ℝ

def reactionDiffusionClosed (R : ReactionDiffusionPackage) : Prop :=
  R.turingInstabilityCondition ∧ R.patternFormationWavelength > 0

theorem reaction_diffusion_closed (R : ReactionDiffusionPackage) (h : R.turingInstabilityCondition) (hp : R.patternFormationWavelength > 0) : reactionDiffusionClosed R :=
  And.intro h hp

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse