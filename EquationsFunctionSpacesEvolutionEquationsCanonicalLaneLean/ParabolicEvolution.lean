import EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean.EvolutionEquation
import EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean.SobolevSpaces

namespace HautevilleHouse
namespace EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean

structure ParabolicEvolutionPackage {F : FunctionSpacesPackage} {S : SobolevSpacesPackage F} (E : EvolutionEquationPackage) where
  parabolicity : Prop
  maximalRegularity : Prop
  smoothingEffect : Prop

structure ParabolicEvolutionEvidence {F : FunctionSpacesPackage} {S : SobolevSpacesPackage F} {E : EvolutionEquationPackage} (P : ParabolicEvolutionPackage E) where
  parabolicityClosed : P.parabolicity
  maximalRegularityClosed : P.maximalRegularity
  smoothingEffectClosed : P.smoothingEffect

def ParabolicEvolutionClosed {F : FunctionSpacesPackage} {S : SobolevSpacesPackage F} {E : EvolutionEquationPackage} (P : ParabolicEvolutionPackage E) : Prop :=
  P.parabolicity ∧ P.maximalRegularity ∧ P.smoothingEffect

theorem parabolic_evolution_closed_from_evidence {F : FunctionSpacesPackage} {S : SobolevSpacesPackage F} {E : EvolutionEquationPackage} (P : ParabolicEvolutionPackage E) (Ev : ParabolicEvolutionEvidence P) : ParabolicEvolutionClosed P := by
  exact And.intro Ev.parabolicityClosed (And.intro Ev.maximalRegularityClosed Ev.smoothingEffectClosed)

end EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean
end HautevilleHouse
