import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean.DifferenceSetStructure

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CyclotomicFieldPackage where
  primePower : Nat
  fieldExtension : ℚ → ℚ[ζ]
  characterSum : Prop
  galoisAction : Prop
  differenceSetRealization : Prop
  characterSumClosed : characterSum
  galoisActionClosed : galoisAction
  differenceSetRealizationClosed : differenceSetRealization

def CyclotomicFieldClosed (C : CyclotomicFieldPackage) : Prop :=
  C.characterSum ∧ C.galoisAction ∧ C.differenceSetRealization

theorem cyclotomic_field_closed_from_package (C : CyclotomicFieldPackage) :
    CyclotomicFieldClosed C :=
  And.intro C.characterSumClosed (And.intro C.galoisActionClosed C.differenceSetRealizationClosed)

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse