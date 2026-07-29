import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyPatternFormationCanonicalLaneLean.TuringInstability

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure PatternFormationEndpointPackage {R : ReactionDiffusionPackage}
    {T : TuringInstabilityPackage R} where
  targetPattern : Type u
  patternFormed : Prop
  wavelengthMatchesDispersion : Prop
  patternIsStable : Prop

structure PatternFormationEndpointEvidence {R : ReactionDiffusionPackage}
    {T : TuringInstabilityPackage R} (P : PatternFormationEndpointPackage T) where
  patternFormedClosed : P.patternFormed
  wavelengthMatchesDispersionClosed : P.wavelengthMatchesDispersion
  patternIsStableClosed : P.patternIsStable

def PatternFormationEndpointClosed {R : ReactionDiffusionPackage}
    {T : TuringInstabilityPackage R} (P : PatternFormationEndpointPackage T) : Prop :=
  P.patternFormed ∧ P.wavelengthMatchesDispersion ∧ P.patternIsStable

theorem pattern_formation_endpoint_closed_from_evidence
    {R : ReactionDiffusionPackage} {T : TuringInstabilityPackage R}
    (P : PatternFormationEndpointPackage T) (E : PatternFormationEndpointEvidence P) :
    PatternFormationEndpointClosed P := by
  exact And.intro E.patternFormedClosed
    (And.intro E.wavelengthMatchesDispersionClosed E.patternIsStableClosed)

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse