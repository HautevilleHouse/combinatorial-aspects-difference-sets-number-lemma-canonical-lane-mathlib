import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure DifferenceSet (G : Type) [AddGroup G] where
  group : G
  order : ℕ
  parameters : ℕ × ℕ × ℕ -- λ, k, v
  subset : Finset G
  differenceProperty : Prop
  subsetSize : subset.card = parameters.2.1
  groupOrder : Fintype.card G = parameters.2.2

structure DifferenceSetEvidence (D : DifferenceSet G) where
  parametersClosed : D.parameters.2.1 = D.subset.card ∧ Fintype.card G = D.parameters.2.2
  differencePropertyClosed : D.differenceProperty

def DifferenceSetClosed (D : DifferenceSet G) : Prop :=
  D.subset.card = D.parameters.2.1 ∧ Fintype.card G = D.parameters.2.2 ∧ D.differenceProperty

theorem difference_set_closed_from_evidence (D : DifferenceSet G) (E : DifferenceSetEvidence D) :
    DifferenceSetClosed D := by
  exact And.intro E.parametersClosed.1 (And.intro E.parametersClosed.2 E.differencePropertyClosed)

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse