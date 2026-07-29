import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure MultiplierTheoremPackage (G : Type) [AddGroup G] (D : DifferenceSet G) where
  multiplierType : Type
  multiplierActing : multiplierType → G → G
  fixedPointFree : Prop
  multiplierProperty : Prop
  multiplierEvidence : multiplierProperty

theorem multiplier_property_closed {G : Type} [AddGroup G] {D : DifferenceSet G} (M : MultiplierTheoremPackage G D) :
    M.multiplierProperty := by
  exact M.multiplierEvidence

def MultiplierClosed {G : Type} [AddGroup G] {D : DifferenceSet G} (M : MultiplierTheoremPackage G D) : Prop :=
  M.multiplierProperty

theorem multiplier_closed_transfer {G : Type} [AddGroup G] {D : DifferenceSet G} (M : MultiplierTheoremPackage G D) :
    MultiplierClosed M := by
  exact M.multiplierEvidence

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse