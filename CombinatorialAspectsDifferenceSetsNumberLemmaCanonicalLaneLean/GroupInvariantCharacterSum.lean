import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure GroupInvariantCharacterSum (p : ℕ) (G : Type) [AddGroup G] [Fintype G] where
  characters : Finset (AddChar G ℂ)
  invariantSum : G → ℂ
  orthogonality : ∀ χ ≠ 0, ∑ g : G, invariantSum g * χ g = 0

structure GroupInvariantCharacterSumEvidence {p : ℕ} {G : Type} [AddGroup G] [Fintype G] (S : GroupInvariantCharacterSum p G) where
  mainBound : Prop
  errorTermBound : Prop
  mainBoundClosed : mainBound
  errorTermBoundClosed : errorTermBound

def GroupInvariantCharacterSumClosed {p : ℕ} {G : Type} [AddGroup G] [Fintype G] (S : GroupInvariantCharacterSum p G) : Prop :=
  S.orthogonality ∧ S.invariantSum

theorem group_invariant_character_sum_closed_from_evidence {p : ℕ} {G : Type} [AddGroup G] [Fintype G] (S : GroupInvariantCharacterSum p G) (E : GroupInvariantCharacterSumEvidence S) : GroupInvariantCharacterSumClosed S := by
  exact And.intro S.orthogonality S.invariantSum

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse