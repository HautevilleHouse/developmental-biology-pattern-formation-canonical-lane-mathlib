import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure ReactionDiffusionPackage where
  domain : Type u
  topology : TopologicalSpace domain
  morphogenU : domain → ℝ
  morphogenV : domain → ℝ
  diffusionU : ℝ
  diffusionV : ℝ
  reactionU : ℝ
  reactionV : ℝ
  boundaryConditions : Prop
  initialConditions : Prop
  wellposedness : Prop

structure ReactionDiffusionEvidence (R : ReactionDiffusionPackage) where
  boundaryConditionsClosed : R.boundaryConditions
  initialConditionsClosed : R.initialConditions
  wellposednessClosed : R.wellposedness

def ReactionDiffusionClosed (R : ReactionDiffusionPackage) : Prop :=
  R.boundaryConditions ∧ R.initialConditions ∧ R.wellposedness

theorem reaction_diffusion_closed_from_evidence (R : ReactionDiffusionPackage)
    (E : ReactionDiffusionEvidence R) : ReactionDiffusionClosed R := by
  exact And.intro E.boundaryConditionsClosed
    (And.intro E.initialConditionsClosed E.wellposednessClosed)

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse