import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean.ReactionKinetics

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean

structure ArrheniusEquationPackage {R : ReactionKineticsPackage} where
  temperatureDependence : Prop
  exponentialForm : Prop
  linearizedForm : Prop
  preExponentialConstant : Prop

structure ArrheniusEquationEvidence {R : ReactionKineticsPackage} (A : ArrheniusEquationPackage R) where
  temperatureDependenceClosed : A.temperatureDependence
  exponentialFormClosed : A.exponentialForm
  linearizedFormClosed : A.linearizedForm
  preExponentialConstantClosed : A.preExponentialConstant

def ArrheniusEquationClosed {R : ReactionKineticsPackage} (A : ArrheniusEquationPackage R) : Prop :=
  A.temperatureDependence ∧ A.exponentialForm ∧ A.linearizedForm ∧ A.preExponentialConstant

theorem arrhenius_equation_closed_from_evidence {R : ReactionKineticsPackage} (A : ArrheniusEquationPackage R)
    (E : ArrheniusEquationEvidence A) : ArrheniusEquationClosed A := by
  exact And.intro E.temperatureDependenceClosed
    (And.intro E.exponentialFormClosed
      (And.intro E.linearizedFormClosed E.preExponentialConstantClosed))

end ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse