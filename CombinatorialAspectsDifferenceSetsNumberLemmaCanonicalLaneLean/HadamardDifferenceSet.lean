import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure HadamardDifferenceSet (G : Type) [AddGroup G] where
  groupOrder : ℕ
  hadamardParameters : ℕ × ℕ × ℕ -- λ, k, v
  subset : Finset G
  hadamardProperty : Prop
  orderRelation : groupOrder = 4 * hadamardParameters.2.1 - 1
  subsetSize : subset.card = hadamardParameters.2.1
  differenceProperty : Prop
  hadamardImplication : hadamardProperty → differenceProperty

structure HadamardEvidence (H : HadamardDifferenceSet G) where
  hadamardPropertyClosed : H.hadamardProperty
  differencePropertyClosed : H.differenceProperty

def HadamardClosed (H : HadamardDifferenceSet G) : Prop :=
  H.hadamardProperty ∧ H.differenceProperty ∧ H.groupOrder = 4 * H.hadamardParameters.2.1 - 1 ∧ H.subset.card = H.hadamardParameters.2.1

theorem hadamard_closed_from_evidence (H : HadamardDifferenceSet G) (E : HadamardEvidence H) :
    HadamardClosed H := by
  exact And.intro E.hadamardPropertyClosed (And.intro E.differencePropertyClosed (And.intro H.orderRelation H.subsetSize))

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse