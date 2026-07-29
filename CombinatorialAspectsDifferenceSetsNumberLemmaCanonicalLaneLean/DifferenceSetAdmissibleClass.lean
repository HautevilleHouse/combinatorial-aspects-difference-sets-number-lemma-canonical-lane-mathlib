import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure DifferenceSetObject where
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
  conclusion : differenceSetProperty

structure AdmissibleClass where
  object : DifferenceSetObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DifferenceSetWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse
