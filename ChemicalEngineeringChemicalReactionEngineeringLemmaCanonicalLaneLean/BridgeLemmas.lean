import ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChemicalEngineeringWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringChemicalReactionEngineeringLemmaCanonicalLaneLean
end HautevilleHouse