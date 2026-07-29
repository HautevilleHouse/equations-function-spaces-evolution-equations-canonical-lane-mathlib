import canonicalLaneMathlib.AdmissibleClass
import EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.wellPosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.wellPosed

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean
end HautevilleHouse