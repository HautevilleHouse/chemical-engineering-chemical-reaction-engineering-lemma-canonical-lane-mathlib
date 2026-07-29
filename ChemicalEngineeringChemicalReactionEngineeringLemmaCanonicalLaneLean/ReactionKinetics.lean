import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  reactionRate : Type u
  rateConstant : Type v
  activationEnergy : Prop
  reactionOrder : Prop
  temperatureDependence : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  activationEnergyClosed : R.activationEnergy
  reactionOrderClosed : R.reactionOrder
  temperatureDependenceClosed : R.temperatureDependence

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.activationEnergy ∧ R.reactionOrder ∧ R.temperatureDependence

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.activationEnergyClosed (And.intro E.reactionOrderClosed E.temperatureDependenceClosed)

end ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
