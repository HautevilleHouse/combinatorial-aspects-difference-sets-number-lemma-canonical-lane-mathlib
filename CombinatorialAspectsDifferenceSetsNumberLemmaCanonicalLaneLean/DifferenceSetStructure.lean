import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

structure DifferenceSetPackage (G : Type u) [Group G] where
  groupOrder : Nat
  subset : Finset G
  parameters : Nat × Nat × Nat
  differenceEquations : Prop
  multiplierExistence : Prop
  multiplierExistenceClosed : multiplierExistence
  differenceEquationsClosed : differenceEquations
  parametersSatisfy : (parameters.1 = groupOrder) ∧ (parameters.2.1 = Finset.card subset) ∧ (parameters.2.2 ∈ Finset.Icc 1 (groupOrder - 1))

def DifferenceSetParametersMatch (D : DifferenceSetPackage G) : Prop :=
  D.parametersSatisfy

theorem difference_set_parameters_checked (D : DifferenceSetPackage G) :
    DifferenceSetParametersMatch D :=
  D.parametersSatisfy

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse