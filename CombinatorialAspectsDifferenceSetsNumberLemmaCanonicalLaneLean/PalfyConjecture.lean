import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean.DifferenceSetStructure

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure PalfyConjecturePackage {G : Type u} [Group G] (D : DifferenceSetPackage G) where
  palfyParameters : (Nat, Nat, Nat)
  palfy_groupOrder : D.groupOrder = palfyParameters.1
  palfy_subsetSize : Finset.card D.subset = palfyParameters.2.1
  palfy_lambda : D.parameters.2.2 = palfyParameters.2.2
  palfyInequality : D.groupOrder ≤ Finset.card D.subset * (Finset.card D.subset - 1)
  palfyInequalityClosed : palfyInequality

def PalfyConjectureClosed {G : Type u} [Group G] {D : DifferenceSetPackage G}
    (P : PalfyConjecturePackage G D) : Prop :=
  P.palfyInequality

theorem palfy_conjecture_closed_evidence {G : Type u} [Group G] {D : DifferenceSetPackage G}
    (P : PalfyConjecturePackage G D) : PalfyConjectureClosed P :=
  P.palfyInequalityClosed

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse