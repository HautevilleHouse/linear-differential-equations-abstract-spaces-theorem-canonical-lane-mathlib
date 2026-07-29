import HautevilleHouse.LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.LinearDifferentialOperator

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure SpectralDecomposition (F : FunctionalAnalyticPackage) (L : LinearDifferentialOperator F) where
  eigenvalueSequence : ℕ → ℝ
  eigenfunctionBasis : ℕ → F.space
  completeness : Prop
  diagonalization : Prop

def SpectralDecompositionClosed {F : FunctionalAnalyticPackage} {L : LinearDifferentialOperator F} (S : SpectralDecomposition F L) : Prop :=
  S.completeness ∧ S.diagonalization

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse