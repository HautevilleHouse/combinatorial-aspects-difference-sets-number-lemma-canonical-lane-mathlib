import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure McFarlandParameter where
  q : ℕ
  d : ℕ
  v : ℕ
  k : ℕ
  λ : ℕ
  parametersValid : v = q^(d+1) * ( (q^(d+1) - 1) / (q - 1) + 1) ∧ k = q^d * ( (q^(d+1) - 1) / (q - 1) ) ∧ λ = q^d * ( (q^d - 1) / (q - 1) )

structure McFarlandDifferenceSet (G : Type) [AddGroup G] where
  params : McFarlandParameter
  groupOrder : ℕ
  subset : Finset G
  mcfarlandProperty : Prop
  groupOrderMatches : groupOrder = params.v
  subsetSize : subset.card = params.k
  differenceProperty : Prop
  mcfarlandToDifference : mcfarlandProperty → differenceProperty

structure McFarlandEvidence (M : McFarlandDifferenceSet G) where
  mcfarlandPropertyClosed : M.mcfarlandProperty
  differencePropertyClosed : M.differenceProperty

def McFarlandClosed (M : McFarlandDifferenceSet G) : Prop :=
  M.mcfarlandProperty ∧ M.differenceProperty ∧ M.groupOrder = M.params.v ∧ M.subset.card = M.params.k

theorem mcfarland_closed_from_evidence (M : McFarlandDifferenceSet G) (E : McFarlandEvidence M) :
    McFarlandClosed M := by
  exact And.intro E.mcfarlandPropertyClosed (And.intro E.differencePropertyClosed (And.intro M.groupOrderMatches M.subsetSize))

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse