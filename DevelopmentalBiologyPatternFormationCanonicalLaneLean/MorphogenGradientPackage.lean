import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogenTypes : Nat
  sourceLocation : ℝ
  decayRate : ℝ
  diffusionRate : ℝ
  thresholdResponse : Prop
  gradientEstablished : Prop

def morphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.thresholdResponse ∧ M.gradientEstablished

theorem morphogen_gradient_closed (M : MorphogenGradientPackage) (ht : M.thresholdResponse) (hg : M.gradientEstablished) : morphogenGradientClosed M :=
  And.intro ht hg

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse