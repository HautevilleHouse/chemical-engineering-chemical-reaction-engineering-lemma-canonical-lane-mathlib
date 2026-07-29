import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean.ReactionMechanism

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean

structure CatalysisPackage {R : ReactionKineticsPackage} {A : ArrheniusEquationPackage R}
    {M : ReactionMechanismPackage R A} where
  catalystRole : Prop
  surfaceAdsorption : Prop
  langmuirHinshelwood : Prop
  turnoverFrequency : Prop

structure CatalysisEvidence {R : ReactionKineticsPackage} {A : ArrheniusEquationPackage R}
    {M : ReactionMechanismPackage R A} (C : CatalysisPackage R A M) where
  catalystRoleClosed : C.catalystRole
  surfaceAdsorptionClosed : C.surfaceAdsorption
  langmuirHinshelwoodClosed : C.langmuirHinshelwood
  turnoverFrequencyClosed : C.turnoverFrequency

def CatalysisClosed {R : ReactionKineticsPackage} {A : ArrheniusEquationPackage R}
    {M : ReactionMechanismPackage R A} (C : CatalysisPackage R A M) : Prop :=
  C.catalystRole ∧ C.surfaceAdsorption ∧ C.langmuirHinshelwood ∧ C.turnoverFrequency

theorem catalysis_closed_from_evidence {R : ReactionKineticsPackage} {A : ArrheniusEquationPackage R}
    {M : ReactionMechanismPackage R A} (C : CatalysisPackage R A M) (E : CatalysisEvidence C) :
    CatalysisClosed C := by
  exact And.intro E.catalystRoleClosed
    (And.intro E.surfaceAdsorptionClosed
      (And.intro E.langmuirHinshelwoodClosed E.turnoverFrequencyClosed))

end ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse