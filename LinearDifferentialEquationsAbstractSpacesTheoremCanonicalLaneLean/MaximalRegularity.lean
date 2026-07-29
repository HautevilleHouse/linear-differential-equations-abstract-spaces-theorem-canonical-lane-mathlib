import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.AbstractSpaces
import HautevilleHouse.LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.Wellposedness

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure MaximalRegularity (X : AbstractSpace) (A : LinearDifferentialOperator X) where
  wellposedness : Wellposedness X A
  maximalInterval : Set ℝ
  leftEndpoint : ℝ
  rightEndpoint : ℝ
  solutionBlowup : ∀ (x : X.carrier) (t : ℝ), t ∉ maximalInterval → ¬ Wellposedness.solutionMap wellposedness x t = 0

theorem maximal_regularity_iff (X : AbstractSpace) (A : LinearDifferentialOperator X) :
  Nonempty (MaximalRegularity X A) ↔ Nonempty (Wellposedness X A) := by
  constructor
  · intro h; exact ⟨h.some.wellposedness⟩
  · intro h; exact ⟨{ wellposedness := h.some, maximalInterval := Set.univ, leftEndpoint := 0, rightEndpoint := 0, solutionBlowup := by intro x t ht; exfalso; exact ht (Set.mem_univ t) }⟩

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse