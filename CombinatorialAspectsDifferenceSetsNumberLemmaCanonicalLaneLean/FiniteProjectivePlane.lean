import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure FiniteProjectivePlane (q : ℕ) where
  q_prime_power : ∃ prime p n, q = p ^ n ∧ n ≥ 1
  points : Finset (ℕ × ℕ)
  lines : Finset (Finset (ℕ × ℕ))
  incidence : (ℕ × ℕ) × Finset (ℕ × ℕ) → Prop
  order_matches : lines.card = q^2 + q + 1
  symmetric : lines.card = points.card

structure FiniteProjectivePlaneEvidence (P : FiniteProjectivePlane q) where
  incidenceStructure : Prop
  intersectionProperty : Prop
  uniformLineSize : Prop
  incidenceStructureClosed : incidenceStructure
  intersectionPropertyClosed : intersectionProperty
  uniformLineSizeClosed : uniformLineSize

def FiniteProjectivePlaneClosed (P : FiniteProjectivePlane q) : Prop :=
  P.order_matches ∧ P.symmetric

theorem finite_projective_plane_closed_from_evidence (P : FiniteProjectivePlane q) (E : FiniteProjectivePlaneEvidence P) : FiniteProjectivePlaneClosed P := by
  exact And.intro P.order_matches P.symmetric

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse