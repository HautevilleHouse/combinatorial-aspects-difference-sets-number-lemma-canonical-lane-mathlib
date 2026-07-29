import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

def CombinatorialAspectsDifferenceSetNumberLemmaClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem combinatorial_aspects_difference_set_number_lemma_endgame (A : AdmissibleClass) : CombinatorialAspectsDifferenceSetNumberLemmaClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse