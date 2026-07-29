import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPatternFormationCanonicalLaneLean

structure CellCellSignalingPackage where
  cellCount : Nat
  signalingMolecules : List ℝ
  receptorBindingAffinities : List ℝ
  signalPropagationSpeed : ℝ
  juxtacrineSignaling : Prop
  paracrineSignaling : Prop

def cellCellSignalingClosed (C : CellCellSignalingPackage) : Prop :=
  C.juxtacrineSignaling ∧ C.paracrineSignaling

theorem cell_cell_signaling_closed (C : CellCellSignalingPackage) (hj : C.juxtacrineSignaling) (hp : C.paracrineSignaling) : cellCellSignalingClosed C :=
  And.intro hj hp

end DevelopmentalBiologyPatternFormationCanonicalLaneLean
end HautevilleHouse