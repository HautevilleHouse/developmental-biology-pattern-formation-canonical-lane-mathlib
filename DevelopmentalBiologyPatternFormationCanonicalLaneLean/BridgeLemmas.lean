import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PatternFormationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse