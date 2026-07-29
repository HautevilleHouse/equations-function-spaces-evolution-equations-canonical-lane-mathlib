import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FunctionSpace where
  carrier : Type
  norm : carrier → ℝ
  complete : Prop

default

structure EvolutionEquation where
  functionSpace : FunctionSpace
  equation : Prop
  solutionSpace : FunctionSpace
  wellPosed : Prop

default

structure AdmissibleClass where
  object : EvolutionEquation
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.wellPosed) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean
end HautevilleHouse