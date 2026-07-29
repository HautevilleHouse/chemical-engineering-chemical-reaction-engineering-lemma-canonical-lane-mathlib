import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionEngineeringLemma

structure GibbsFreeEnergyPackage where
  temperature : Type
  pressure : Type
  enthalpy : Type
  entropy : Type
  equilibriumCondition : Prop
  phaseEquilibrium : Prop

structure GibbsFreeEnergyEvidence (G : GibbsFreeEnergyPackage) where
  equilibriumConditionClosed : G.equilibriumCondition
  phaseEquilibriumClosed : G.phaseEquilibrium

def GibbsFreeEnergyClosed (G : GibbsFreeEnergyPackage) : Prop :=
  G.equilibriumCondition ∧ G.phaseEquilibrium

theorem gibbs_free_energy_closed_from_evidence (G : GibbsFreeEnergyPackage) (E : GibbsFreeEnergyEvidence G) :
    GibbsFreeEnergyClosed G := by
  exact And.intro E.equilibriumConditionClosed E.phaseEquilibriumClosed

end ChemicalReactionEngineeringLemma
end HautevilleHouse