import HautevilleHouse.EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean.FunctionSpacesPackage

namespace HautevilleHouse
namespace EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean

structure EvolutionEquationsPackage (F : FunctionSpacesPackage) where
  timeDomain : Type u
  stateSpace : Type v
  evolutionOperator : timeDomain → stateSpace → stateSpace
  wellPosed : Prop
  semigroupProperty : Prop
  generator : Prop

structure EvolutionEquationsEvidence {F : FunctionSpacesPackage} (E : EvolutionEquationsPackage F) where
  wellPosedClosed : E.wellPosed
  semigroupPropertyClosed : E.semigroupProperty
  generatorClosed : E.generator

def EvolutionEquationsClosed {F : FunctionSpacesPackage} (E : EvolutionEquationsPackage F) : Prop :=
  E.wellPosed ∧ E.semigroupProperty ∧ E.generator

theorem evolution_equations_closed_from_evidence
    {F : FunctionSpacesPackage} (E : EvolutionEquationsPackage F)
    (Ev : EvolutionEquationsEvidence E) : EvolutionEquationsClosed E := by
  exact And.intro Ev.wellPosedClosed (And.intro Ev.semigroupPropertyClosed Ev.generatorClosed)

end EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean
end HautevilleHouse