import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyPatternFormationCanonicalLaneLean.ReactionDiffusionPDE

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure TuringInstabilityPackage {R : ReactionDiffusionPackage} where
  homogeneousSteadyState : Prop
  diffusionDrivenInstability : Prop
  wavelengthSelection : Prop
  patternSymmetry : Prop

structure TuringInstabilityEvidence {R : ReactionDiffusionPackage}
    (T : TuringInstabilityPackage R) where
  homogeneousSteadyStateClosed : T.homogeneousSteadyState
  diffusionDrivenInstabilityClosed : T.diffusionDrivenInstability
  wavelengthSelectionClosed : T.wavelengthSelection
  patternSymmetryClosed : T.patternSymmetry

def TuringInstabilityClosed {R : ReactionDiffusionPackage}
    (T : TuringInstabilityPackage R) : Prop :=
  T.homogeneousSteadyState ∧ T.diffusionDrivenInstability ∧
  T.wavelengthSelection ∧ T.patternSymmetry

theorem turing_instability_closed_from_evidence {R : ReactionDiffusionPackage}
    (T : TuringInstabilityPackage R) (E : TuringInstabilityEvidence T) :
    TuringInstabilityClosed T := by
  exact And.intro E.homogeneousSteadyStateClosed
    (And.intro E.diffusionDrivenInstabilityClosed
      (And.intro E.wavelengthSelectionClosed E.patternSymmetryClosed))

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse
