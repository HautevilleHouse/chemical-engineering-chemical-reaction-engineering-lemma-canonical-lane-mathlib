import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  species : Type u
  concentration : species → ℝ
  rateConstant : ℝ
  reactionOrder : ℕ
  rateLaw : Prop
  rateLawTerm : rateLaw

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  rateLawClosed : K.rateLaw

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.rateLaw

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage) (E : ReactionKineticsEvidence K) : ReactionKineticsClosed K := by
  exact E.rateLawClosed

end ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse