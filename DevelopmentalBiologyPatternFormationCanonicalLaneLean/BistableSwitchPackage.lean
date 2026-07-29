import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure BistableSwitchPackage where
  geneCount : Nat
  mutualRepression : List (ℝ → ℝ)
  activationThresholds : List ℝ
  stableSteadyStates : List ℝ
  hysteresisProperty : Prop

def bistableSwitchClosed (B : BistableSwitchPackage) : Prop :=
  B.stableSteadyStates.length ≥ 2 ∧ B.hysteresisProperty

theorem bistable_switch_closed (B : BistableSwitchPackage) (hss : B.stableSteadyStates.length ≥ 2) (hhys : B.hysteresisProperty) : bistableSwitchClosed B :=
  And.intro hss hhys

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse