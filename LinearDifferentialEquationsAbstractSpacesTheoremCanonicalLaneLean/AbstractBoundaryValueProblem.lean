import HautevilleHouse.LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.LinearDifferentialOperator

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure AbstractBoundaryValueProblem (F : FunctionalAnalyticPackage) (L : LinearDifferentialOperator F) where
  sourceTerm : F.space
  boundaryCondition : F.space → Prop
  solutionSpace : Type u
  existence : Prop
  uniqueness : Prop
  stability : Prop

def AbstractBoundaryValueProblemClosed {F : FunctionalAnalyticPackage} {L : LinearDifferentialOperator F} (P : AbstractBoundaryValueProblem F L) : Prop :=
  P.existence ∧ P.uniqueness ∧ P.stability

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse