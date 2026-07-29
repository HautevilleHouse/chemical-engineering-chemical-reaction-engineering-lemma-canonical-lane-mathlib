import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean

structure ReactorDesignPackage where
  batchReactor : Type u
  continuousStirredTank : Type v
  plugFlowReactor : Type w
  massBalance : Prop
  energyBalance : Prop
  designEquation : Prop

structure ReactorDesignEvidence (R : ReactorDesignPackage) where
  massBalanceClosed : R.massBalance
  energyBalanceClosed : R.energyBalance
  designEquationClosed : R.designEquation

def ReactorDesignClosed (R : ReactorDesignPackage) : Prop :=
  R.massBalance ∧ R.energyBalance ∧ R.designEquation

theorem reactor_design_closed_from_evidence (R : ReactorDesignPackage) (E : ReactorDesignEvidence R) :
    ReactorDesignClosed R := by
  exact And.intro E.massBalanceClosed (And.intro E.energyBalanceClosed E.designEquationClosed)

end ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
