import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Type u
  gibbsFreeEnergy : Type v
  leChatelierPrinciple : Prop
  temperatureEffect : Prop
  pressureEffect : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  temperatureEffectClosed : C.temperatureEffect
  pressureEffectClosed : C.pressureEffect

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.leChatelierPrinciple ∧ C.temperatureEffect ∧ C.pressureEffect

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.leChatelierPrincipleClosed (And.intro E.temperatureEffectClosed E.pressureEffectClosed)

end ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
