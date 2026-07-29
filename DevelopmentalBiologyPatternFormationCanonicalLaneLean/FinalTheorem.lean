import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyPatternFormationCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DevelopmentalBiologyPatternFormationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

def ConstrainedPatternFormationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_pattern_formation_endgame (A : AdmissibleClass) :
    ConstrainedPatternFormationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse
