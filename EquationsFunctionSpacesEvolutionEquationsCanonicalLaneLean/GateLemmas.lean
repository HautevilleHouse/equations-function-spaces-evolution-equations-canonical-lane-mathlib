import canonicalLaneMathlib.AdmissibleClass
import EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean
end HautevilleHouse