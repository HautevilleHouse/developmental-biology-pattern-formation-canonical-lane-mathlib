import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PatternFormationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PatternFormationAdmittedObject where
  space : PatternFormationSpace
  patternFormationProcess : Prop
  patternFormationResult : Prop
  conclusion : patternFormationResult

structure PatternFormationEndgameState where
  object : PatternFormationAdmittedObject

def PatternFormationWitnessClosed (O : PatternFormationAdmittedObject) : Prop :=
  O.patternFormationResult

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse