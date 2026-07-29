import canonicalLaneMathlib.AdmissibleClass
import EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean

structure SobolevSpace where
  domain : Type
  exponent : ℝ
  order : ℕ
  completeness : Prop
  embedding : Prop

default

structure SobolevSpaceEvidence (S : SobolevSpace) where
  completenessClosed : S.completeness
  embeddingClosed : S.embedding

def SobolevSpaceClosed (S : SobolevSpace) : Prop :=
  S.completeness ∧ S.embedding

theorem sobolev_space_closed_from_evidence (S : SobolevSpace) (E : SobolevSpaceEvidence S) : SobolevSpaceClosed S :=
  And.intro E.completenessClosed E.embeddingClosed

end EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean
end HautevilleHouse