import EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean

structure WellPosednessPackage where
  existence : Prop
  uniqueness : Prop
  continuousDependence : Prop
  stability : Prop

structure WellPosednessEvidence (W : WellPosednessPackage) where
  existenceClosed : W.existence
  uniquenessClosed : W.uniqueness
  continuousDependenceClosed : W.continuousDependence
  stabilityClosed : W.stability

def WellPosednessClosed (W : WellPosednessPackage) : Prop :=
  W.existence ∧ W.uniqueness ∧ W.continuousDependence ∧ W.stability

theorem well_posedness_closed_from_evidence (W : WellPosednessPackage) (E : WellPosednessEvidence W) : WellPosednessClosed W := by
  exact And.intro E.existenceClosed (And.intro E.uniquenessClosed (And.intro E.continuousDependenceClosed E.stabilityClosed))

end EquationsFunctionSpacesEvolutionEquationsCanonicalLaneLean
end HautevilleHouse
