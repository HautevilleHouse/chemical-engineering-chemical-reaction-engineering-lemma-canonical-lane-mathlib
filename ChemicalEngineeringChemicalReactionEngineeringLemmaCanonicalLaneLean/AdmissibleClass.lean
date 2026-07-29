import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean

structure AdmittedObject where
  reaction : Type
  kinetics : Type
  catalyst : Type
  equilibrium : Prop
  thermodynamics : Prop

def AdmittedObjectClosed (A : AdmittedObject) : Prop :=
  A.equilibrium ∧ A.thermodynamics

end ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
