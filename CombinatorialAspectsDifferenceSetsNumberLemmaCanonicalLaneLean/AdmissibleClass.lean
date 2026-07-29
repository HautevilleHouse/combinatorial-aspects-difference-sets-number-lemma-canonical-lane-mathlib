import HautevilleHouse.CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure DifferenceSetObject where
  group : Type
  order : ℕ
  subsetSize : ℕ
  differenceSetProperty : Prop
  lambdaParameter : ℕ
  conclusion : differenceSetProperty

structure AdmissibleClass where
  object : DifferenceSetObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse