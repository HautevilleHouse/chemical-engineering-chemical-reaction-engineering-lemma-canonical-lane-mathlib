import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  orbitalEnergies : Type u
  waveFunction : Type v
  bondingAntibonding : Prop
  huckelMethod : Prop
  symmetryBasis : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  bondingAntibondingClosed : M.bondingAntibonding
  huckelMethodClosed : M.huckelMethod
  symmetryBasisClosed : M.symmetryBasis

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.bondingAntibonding ∧ M.huckelMethod ∧ M.symmetryBasis

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) :
    MolecularOrbitalTheoryClosed M := by
  exact And.intro E.bondingAntibondingClosed (And.intro E.huckelMethodClosed E.symmetryBasisClosed)

end ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
