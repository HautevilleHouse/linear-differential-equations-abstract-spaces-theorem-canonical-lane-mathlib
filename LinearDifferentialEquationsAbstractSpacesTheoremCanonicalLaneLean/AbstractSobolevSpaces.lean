import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.LinearDifferentialOperator

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure AbstractSobolevSpace (X : Type u) [NormedAddCommGroup X] [InnerProductSpace ℝ X] where
  exponent : ℝ≥0
  weakDerivativeClass : Set (X → ℝ)
  normDefined : Prop
  completeness : Prop

structure AbstractSobolevSpaceEvidence (X : Type u) [NormedAddCommGroup X] [InnerProductSpace ℝ X] (S : AbstractSobolevSpace X) where
  normDefinedClosed : S.normDefined
  completenessClosed : S.completeness

def AbstractSobolevSpaceClosed (X : Type u) [NormedAddCommGroup X] [InnerProductSpace ℝ X] (S : AbstractSobolevSpace X) : Prop :=
  S.normDefined ∧ S.completeness

theorem abstract_sobolev_space_closed_from_evidence
    (X : Type u) [NormedAddCommGroup X] [InnerProductSpace ℝ X] (S : AbstractSobolevSpace X)
    (E : AbstractSobolevSpaceEvidence X S) : AbstractSobolevSpaceClosed X S :=
  And.intro E.normDefinedClosed E.completenessClosed

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse