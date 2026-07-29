import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean.ArrheniusEquation

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean

structure ReactionMechanismPackage {R : ReactionKineticsPackage} {A : ArrheniusEquationPackage R} where
  elementarySteps : Prop
  rateDeterminingStep : Prop
  steadyStateApprox : Prop
  preEquilibriumApprox : Prop

structure ReactionMechanismEvidence {R : ReactionKineticsPackage} {A : ArrheniusEquationPackage R}
    (M : ReactionMechanismPackage R A) where
  elementaryStepsClosed : M.elementarySteps
  rateDeterminingStepClosed : M.rateDeterminingStep
  steadyStateApproxClosed : M.steadyStateApprox
  preEquilibriumApproxClosed : M.preEquilibriumApprox

def ReactionMechanismClosed {R : ReactionKineticsPackage} {A : ArrheniusEquationPackage R}
    (M : ReactionMechanismPackage R A) : Prop :=
  M.elementarySteps ∧ M.rateDeterminingStep ∧ M.steadyStateApprox ∧ M.preEquilibriumApprox

theorem reaction_mechanism_closed_from_evidence {R : ReactionKineticsPackage} {A : ArrheniusEquationPackage R}
    (M : ReactionMechanismPackage R A) (E : ReactionMechanismEvidence M) : ReactionMechanismClosed M := by
  exact And.intro E.elementaryStepsClosed
    (And.intro E.rateDeterminingStepClosed
      (And.intro E.steadyStateApproxClosed E.preEquilibriumApproxClosed))

end ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse