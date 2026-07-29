import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean

structure ThermodynamicsPackage where
  enthalpyChange : Type u
  entropyChange : Type v
  internalEnergy : Prop
  firstLaw : Prop
  secondLaw : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  internalEnergyClosed : T.internalEnergy
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.internalEnergy ∧ T.firstLaw ∧ T.secondLaw

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.internalEnergyClosed (And.intro E.firstLawClosed E.secondLawClosed)

end ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
