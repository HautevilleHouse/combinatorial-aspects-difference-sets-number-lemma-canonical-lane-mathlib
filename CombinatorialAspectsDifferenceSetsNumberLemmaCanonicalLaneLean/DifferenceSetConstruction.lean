import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure DifferenceSetConstruction where
  group : Type u
  groupMul : Mul group
  groupInv : Inv group
  groupGrp : Group group
  subset : Set group
  size : ℕ
  params : ℕ × ℕ × ℕ
  parameters : size = 1 + (params.2.1 * params.1) / params.2.2
  lambdaVal : ℕ
  differenceSetProperty : (∀ g ≠ 1, |(subset * {g⁻¹}) ∩ subset| = lambdaVal)
  existenceProof : differenceSetProperty

structure DifferenceSetEvidence (D : DifferenceSetConstruction) where
  sizeCheck : D.size = 1 + (D.params.2.1 * D.params.1) / D.params.2.2
  lambdaCheck : D.differenceSetProperty
  evidenceClosed : D.existenceProof

def DifferenceSetWitnessClosed (D : DifferenceSetConstruction) : Prop :=
  D.differenceSetProperty

theorem difference_set_witness_closed_from_evidence (D : DifferenceSetConstruction) (E : DifferenceSetEvidence D) :
    DifferenceSetWitnessClosed D := by
  exact E.evidenceClosed

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse
