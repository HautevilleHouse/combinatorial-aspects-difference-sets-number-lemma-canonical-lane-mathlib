import HautevilleHouse.CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean

def sourceTheoremKey : String :=
  "combinatorial_aspects_difference_sets_number_lemma"

def theoremObjectDescription : String :=
  "Difference set existence and parameter constraints"

def admissibleClassCertificateLane : String :=
  "difference_sets_constrained"

def sourceBoundaryOpen : Prop :=
  True

def theoremStatement : Prop :=
  forall (A : AdmissibleClass), ConstrainedDifferenceSetsClosure A

theorem theorem_statement_holds : theoremStatement := by
  intro A
  exact constrained_difference_sets_endgame A

end CombinatorialAspectsDifferenceSetsNumberLemmaCanonicalLaneLean
end HautevilleHouse