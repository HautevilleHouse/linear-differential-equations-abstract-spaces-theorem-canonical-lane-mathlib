import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.AbstractSpaces

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure EvolutionSemigroup (X : AbstractSpace) where
  semigroup : ℝ → LinearMap ℝ X.carrier X.carrier
  identityAtZero : semigroup 0 = 1
  semigroupProperty : ∀ t s : ℝ, semigroup (t + s) = (semigroup t) ∘ (semigroup s)
  strongContinuity : ∀ x : X.carrier, ContinuousAt (fun t : ℝ => (semigroup t) x) 0

theorem infinitesimal_generator (X : AbstractSpace) (E : EvolutionSemigroup X) : ∃ (A : LinearDifferentialOperator X), True := by
  sorry

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse