import EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean

structure FunctionSpacesPackage where
  spaceType : Type u
  norm : spaceType → ℝ
  completeness : Prop
  embeddingTheorems : Prop
  interpolation : Prop

structure FunctionSpacesEvidence (F : FunctionSpacesPackage) where
  completenessClosed : F.completeness
  embeddingTheoremsClosed : F.embeddingTheorems
  interpolationClosed : F.interpolation

def FunctionSpacesClosed (F : FunctionSpacesPackage) : Prop :=
  F.completeness ∧ F.embeddingTheorems ∧ F.interpolation

theorem function_spaces_closed_from_evidence (F : FunctionSpacesPackage) (E : FunctionSpacesEvidence F) : FunctionSpacesClosed F := by
  exact And.intro E.completenessClosed (And.intro E.embeddingTheoremsClosed E.interpolationClosed)

end EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean
end HautevilleHouse
