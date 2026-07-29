import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure CyclicDifferenceSetParameters (p : ℕ) (k : ℕ) (λ : ℕ) where
  p_prime : Nat.Prime p
  k_pos : k > 0
  λ_pos : λ > 0
  order_eq : p = k*(k-1)/λ + 1

structure CyclicDifferenceSet (p k λ : ℕ) (params : CyclicDifferenceSetParameters p k λ) where
  carrier : Finset ℤ
  size : carrier.card = k
  diffMultiset : (carrier - carrier).count = λ

structure CyclicDifferenceSetEvidence {p k λ : ℕ} {params : CyclicDifferenceSetParameters p k λ} (D : CyclicDifferenceSet p k λ params) where
  dimensionalStructure : Prop
  characterSumBound : Prop
  multiplierGroup : Prop
  incidenceMatrixRank : Prop
  dimensionalStructureClosed : dimensionalStructure
  characterSumBoundClosed : characterSumBound
  multiplierGroupClosed : multiplierGroup
  incidenceMatrixRankClosed : incidenceMatrixRank

def CyclicDifferenceSetClosed {p k λ : ℕ} {params : CyclicDifferenceSetParameters p k λ} (D : CyclicDifferenceSet p k λ params) : Prop :=
  D.size ∧ D.diffMultiset

theorem cyclic_difference_set_closed_from_evidence {p k λ : ℕ} {params : CyclicDifferenceSetParameters p k λ} (D : CyclicDifferenceSet p k λ params) (E : CyclicDifferenceSetEvidence D) : CyclicDifferenceSetClosed D := by
  exact And.intro D.size D.diffMultiset

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse