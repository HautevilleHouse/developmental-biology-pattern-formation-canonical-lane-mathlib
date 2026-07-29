import DevelopmentalBiologyPatternFormationCanonicalLaneLean.AdmissibleClass

/-!
# Gene Regulatory Network Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  genes : List String
  regulations : List (String × String × Bool) -- (source, target, activating?)
  steadyStates : Prop
  networkDynamics : Prop
  patternSpecificGenes : List String

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  steadyStatesClosed : G.steadyStates
  networkDynamicsClosed : G.networkDynamics
  patternSpecificGenesNonempty : G.patternSpecificGenes ≠ []

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.steadyStates ∧ G.networkDynamics ∧ G.patternSpecificGenes ≠ []

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.steadyStatesClosed
    (And.intro E.networkDynamicsClosed E.patternSpecificGenesNonempty)

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse