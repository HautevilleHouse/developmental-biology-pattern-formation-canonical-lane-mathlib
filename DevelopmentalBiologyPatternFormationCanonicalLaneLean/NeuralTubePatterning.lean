import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure NeuralTubePatterningPackage where
  floorPlate : Type
  roofPlate : Type
  sonicHedgehogGradient : MorphogenGradientPackage
  bmpGradient : MorphogenGradientPackage
  dorsalVentralPatterning : Prop
  progenitorDomainSpecification : Prop
  interneuronSubtypeSpecification : Prop

structure NeuralTubePatterningEvidence (N : NeuralTubePatterningPackage) where
  dorsalVentralPatterningClosed : N.dorsalVentralPatterning
  progenitorDomainSpecificationClosed : N.progenitorDomainSpecification
  interneuronSubtypeSpecificationClosed : N.interneuronSubtypeSpecification

def NeuralTubePatterningClosed (N : NeuralTubePatterningPackage) : Prop :=
  N.dorsalVentralPatterning ∧ N.progenitorDomainSpecification ∧
  N.interneuronSubtypeSpecification

theorem neural_tube_patterning_closed_from_evidence
    (N : NeuralTubePatterningPackage)
    (E : NeuralTubePatterningEvidence N) : NeuralTubePatterningClosed N := by
  exact And.intro E.dorsalVentralPatterningClosed
    (And.intro E.progenitorDomainSpecificationClosed
      E.interneuronSubtypeSpecificationClosed)

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse