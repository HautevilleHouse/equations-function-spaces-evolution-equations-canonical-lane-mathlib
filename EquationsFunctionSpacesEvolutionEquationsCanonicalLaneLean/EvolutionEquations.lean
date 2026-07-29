import canonicalLaneMathlib.AdmissibleClass
import EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean.AdmissibleClass
import EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean.SobolevSpaces

namespace HautevilleHouse
namespace EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean

structure ParabolicEquation where
  sobolevSpace : SobolevSpace
  operator : Type
  initialCondition : Prop
  existenceTime : ℝ
  regularity : Prop

default

structure ParabolicEquationEvidence (P : ParabolicEquation) where
  initialConditionClosed : P.initialCondition
  regularityClosed : P.regularity

def ParabolicEquationClosed (P : ParabolicEquation) : Prop :=
  P.initialCondition ∧ P.regularity

theorem parabolic_equation_closed_from_evidence (P : ParabolicEquation) (E : ParabolicEquationEvidence P) : ParabolicEquationClosed P :=
  And.intro E.initialConditionClosed E.regularityClosed

end EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean
end HautevilleHouse