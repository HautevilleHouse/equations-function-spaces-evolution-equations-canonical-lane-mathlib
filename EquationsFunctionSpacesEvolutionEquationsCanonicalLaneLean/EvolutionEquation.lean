import EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean

structure EvolutionEquationPackage where
  stateSpace : Type u
  timeDomain : Type v
  generator : stateSpace → stateSpace
  wellPosedness : Prop
  semigroupProperty : Prop

structure EvolutionEquationEvidence (E : EvolutionEquationPackage) where
  wellPosednessClosed : E.wellPosedness
  semigroupPropertyClosed : E.semigroupProperty

def EvolutionEquationClosed (E : EvolutionEquationPackage) : Prop :=
  E.wellPosedness ∧ E.semigroupProperty

theorem evolution_equation_closed_from_evidence (E : EvolutionEquationPackage) (Ev : EvolutionEquationEvidence E) : EvolutionEquationClosed E := by
  exact And.intro Ev.wellPosednessClosed Ev.semigroupPropertyClosed

end EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean
end HautevilleHouse
