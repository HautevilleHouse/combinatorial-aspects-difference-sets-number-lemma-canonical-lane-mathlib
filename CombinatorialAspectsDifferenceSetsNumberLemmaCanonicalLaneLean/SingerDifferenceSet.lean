import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure SingerDifferenceSet (q : ℕ) where
  parameters : ℕ × ℕ × ℕ -- λ, k, v
  cyclicGroup : Type
  cyclicGroupSize : ℕ
  generator : cyclicGroup
  subset : Finset cyclicGroup
  singerProperty : Prop
  parametersMatch : cyclicGroupSize = (q^2 + q + 1) ∧ parameters.2.2 = cyclicGroupSize
  subsetSize : subset.card = parameters.2.1

def SingerClosed {q : ℕ} (S : SingerDifferenceSet q) : Prop :=
  S.singerProperty ∧ S.cyclicGroupSize = (q^2 + q + 1) ∧ S.parameters.2.2 = S.cyclicGroupSize ∧ S.subset.card = S.parameters.2.1

theorem singer_closed_properties {q : ℕ} (S : SingerDifferenceSet q) (h : S.singerProperty) (hparams : S.cyclicGroupSize = (q^2 + q + 1) ∧ S.parameters.2.2 = S.cyclicGroupSize) (hsize : S.subset.card = S.parameters.2.1) :
    SingerClosed S := by
  exact And.intro h (And.intro hparams.1 (And.intro hparams.2 hsize))

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse