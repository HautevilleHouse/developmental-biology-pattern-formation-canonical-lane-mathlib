import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure ReactionDiffusionPackage where
  speciesCount : Nat
  diffusionRates : List ℝ
  reactionRates : List ℝ
  initialConditions : Prop
  boundaryConditions : Prop
  patternExistence : Prop

structure ReactionDiffusionEvidence (R : ReactionDiffusionPackage) where
  initialConditionsClosed : R.initialConditions
  boundaryConditionsClosed : R.boundaryConditions
  patternExistenceClosed : R.patternExistence

def ReactionDiffusionClosed (R : ReactionDiffusionPackage) : Prop :=
  R.initialConditions ∧ R.boundaryConditions ∧ R.patternExistence

theorem reaction_diffusion_closed_from_evidence (R : ReactionDiffusionPackage)
    (E : ReactionDiffusionEvidence R) : ReactionDiffusionClosed R := by
  exact And.intro E.initialConditionsClosed (And.intro E.boundaryConditionsClosed E.patternExistenceClosed)

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse
