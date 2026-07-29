import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.AbstractSpaces
import HautevilleHouse.LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.EvolutionSemigroup

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure Wellposedness (X : AbstractSpace) (A : LinearDifferentialOperator X) where
  evolutionSemigroup : EvolutionSemigroup X
  generator : LinearDifferentialOperator X
  generatorMatchesA : generator = A
  solutionMap : X.carrier → (ℝ → X.carrier)
  initialCondition : ∀ x : X.carrier, solutionMap x 0 = x
  satisfiesEquation : ∀ (x : X.carrier) (t : ℝ), derivative (solutionMap x) t = A (solutionMap x t)

theorem wellposedness_unique (X : AbstractSpace) (A : LinearDifferentialOperator X) (W1 W2 : Wellposedness X A) : W1 = W2 := by
  sorry

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse