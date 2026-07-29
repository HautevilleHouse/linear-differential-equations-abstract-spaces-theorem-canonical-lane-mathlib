import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.AbstractSobolevSpaces

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure WeakSolutionExistence (X : Type u) [NormedAddCommGroup X] [InnerProductSpace ℝ X] (S : AbstractSobolevSpace X) where
  operator : LinearDifferentialOperator X
  sourceTerm : X → ℝ
  weakSolution : X → ℝ
  weakFormSatisfied : Prop
  solutionUnique : Prop

structure WeakSolutionExistenceEvidence (X : Type u) [NormedAddCommGroup X] [InnerProductSpace ℝ X] (S : AbstractSobolevSpace X) (W : WeakSolutionExistence X S) where
  weakFormSatisfiedClosed : W.weakFormSatisfied
  solutionUniqueClosed : W.solutionUnique

def WeakSolutionExistenceClosed (X : Type u) [NormedAddCommGroup X] [InnerProductSpace ℝ X] (S : AbstractSobolevSpace X) (W : WeakSolutionExistence X S) : Prop :=
  W.weakFormSatisfied ∧ W.solutionUnique

theorem weak_solution_existence_closed_from_evidence
    (X : Type u) [NormedAddCommGroup X] [InnerProductSpace ℝ X] (S : AbstractSobolevSpace X)
    (W : WeakSolutionExistence X S) (E : WeakSolutionExistenceEvidence X S W) : WeakSolutionExistenceClosed X S W :=
  And.intro E.weakFormSatisfiedClosed E.solutionUniqueClosed

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse