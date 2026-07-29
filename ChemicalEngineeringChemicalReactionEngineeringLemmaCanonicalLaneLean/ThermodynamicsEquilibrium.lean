import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean

structure ThermodynamicsEquilibriumPackage where
  temperature : ℝ
  pressure : ℝ
  gibbsFreeEnergy : ℝ
  equilibriumConstant : ℝ
  equilibriumCondition : Prop
  equilibriumConditionTerm : equilibriumCondition

structure ThermodynamicsEquilibriumEvidence (T : ThermodynamicsEquilibriumPackage) where
  equilibriumConditionClosed : T.equilibriumCondition

def ThermodynamicsEquilibriumClosed (T : ThermodynamicsEquilibriumPackage) : Prop :=
  T.equilibriumCondition

theorem thermodynamics_equilibrium_closed_from_evidence (T : ThermodynamicsEquilibriumPackage) (E : ThermodynamicsEquilibriumEvidence T) : ThermodynamicsEquilibriumClosed T := by
  exact E.equilibriumConditionClosed

end ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse