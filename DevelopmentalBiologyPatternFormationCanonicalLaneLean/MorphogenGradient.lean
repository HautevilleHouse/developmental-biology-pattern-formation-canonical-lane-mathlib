import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogenSpecies : Type
  sourceLocalization : Prop
  gradientFormation : Prop
  thresholdResponse : Prop
  positionalInformation : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  sourceLocalizationClosed : M.sourceLocalization
  gradientFormationClosed : M.gradientFormation
  thresholdResponseClosed : M.thresholdResponse
  positionalInformationClosed : M.positionalInformation

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.sourceLocalization ∧ M.gradientFormation ∧
  M.thresholdResponse ∧ M.positionalInformation

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage)
    (E : MorphogenGradientEvidence M) : MorphogenGradientClosed M := by
  exact And.intro E.sourceLocalizationClosed
    (And.intro E.gradientFormationClosed
      (And.intro E.thresholdResponseClosed E.positionalInformationClosed))

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse
