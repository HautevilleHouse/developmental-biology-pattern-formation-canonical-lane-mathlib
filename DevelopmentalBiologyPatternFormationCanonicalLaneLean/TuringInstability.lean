import DevelopmentalBiologyPatternFormationCanonicalLaneLean.ReactionDiffusionPDE

/-!
# Turing Instability Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure TuringInstabilityPackage {P : ReactionDiffusionPDEPackage} where
  steadyState : Prop
  diffusionCoeffRatio : Prop
  turingCondition : Prop
  dispersionRelation : Prop
  patternWavelength : Prop

structure TuringInstabilityEvidence {P : ReactionDiffusionPDEPackage}
    (T : TuringInstabilityPackage P) where
  steadyStateClosed : T.steadyState
  diffusionCoeffRatioClosed : T.diffusionCoeffRatio
  turingConditionClosed : T.turingCondition
  dispersionRelationClosed : T.dispersionRelation
  patternWavelengthClosed : T.patternWavelength

def TuringInstabilityClosed {P : ReactionDiffusionPDEPackage}
    (T : TuringInstabilityPackage P) : Prop :=
  T.steadyState ∧ T.diffusionCoeffRatio ∧ T.turingCondition ∧
  T.dispersionRelation ∧ T.patternWavelength

theorem turing_instability_closed_from_evidence
    {P : ReactionDiffusionPDEPackage} (T : TuringInstabilityPackage P)
    (E : TuringInstabilityEvidence T) : TuringInstabilityClosed T := by
  exact And.intro E.steadyStateClosed
    (And.intro E.diffusionCoeffRatioClosed
      (And.intro E.turingConditionClosed
        (And.intro E.dispersionRelationClosed E.patternWavelengthClosed)))

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse