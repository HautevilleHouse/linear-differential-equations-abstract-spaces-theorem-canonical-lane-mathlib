import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure AbstractSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  vectorSpaceStructure : Module ℝ carrier
  norm : carrier → ℝ
  normedSpaceAxioms : NormedSpace ℝ carrier

structure LinearDifferentialOperator (X : AbstractSpace) where
  domain : Set X.carrier
  codomain : Type v
  isLinear : LinearMap ℝ (Subtype fun x : X.carrier => x ∈ domain) codomain

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse