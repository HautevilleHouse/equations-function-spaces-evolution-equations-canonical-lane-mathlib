import Mathlib.Analysis.SpecialFunctions.Exponential

namespace HautevilleHouse
namespace EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean

structure FunctionSpacesPackage where
  underlyingSpace : Type u
  norm : Norm underlyingSpace
  completeness : Prop
  embedding : Prop
  multiplication : Prop

structure FunctionSpacesEvidence (F : FunctionSpacesPackage) where
  completenessClosed : F.completeness
  embeddingClosed : F.embedding
  multiplicationClosed : F.multiplication

def FunctionSpacesClosed (F : FunctionSpacesPackage) : Prop :=
  F.completeness ∧ F.embedding ∧ F.multiplication

theorem function_spaces_closed_from_evidence
    (F : FunctionSpacesPackage) (Ev : FunctionSpacesEvidence F) : FunctionSpacesClosed F := by
  exact And.intro Ev.completenessClosed (And.intro Ev.embeddingClosed Ev.multiplicationClosed)

end EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean
end HautevilleHouse