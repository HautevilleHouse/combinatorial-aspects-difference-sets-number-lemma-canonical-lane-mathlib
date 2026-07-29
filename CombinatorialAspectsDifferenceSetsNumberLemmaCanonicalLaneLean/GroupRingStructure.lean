import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure GroupRingPackage where
  group : Type u
  ring : Type v
  multiplication : group → group → group
  addition : ring → ring → ring
  groupIsAbelian : Prop
  ringIsCommutative : Prop
  groupEmbedding : group → ring
  groupRingRelation : ∀ g h : group, groupEmbedding (multiplication g h) = addition (groupEmbedding g) (groupEmbedding h)
  differenceSetCharacterized : Prop

def GroupRingClosed (G : GroupRingPackage) : Prop :=
  G.groupIsAbelian ∧ G.ringIsCommutative ∧ G.differenceSetCharacterized

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse
