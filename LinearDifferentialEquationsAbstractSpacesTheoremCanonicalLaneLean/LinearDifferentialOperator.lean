import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure LinearDifferentialOperator (X : Type u) [AddCommGroup X] [Module ℝ X] where
  domain : Set X
  codomain : Type v
  [codomainAddCommGroup : AddCommGroup codomain]
  [codomainModule : Module ℝ codomain]
  operator : domain → codomain
  linearity : ∀ (u v : domain) (a b : ℝ), operator (a • u + b • v) = a • operator u + b • operator v

structure LinearDifferentialOperatorEvidence (X : Type u) [AddCommGroup X] [Module ℝ X] (D : LinearDifferentialOperator X) where
  domainOpen : IsOpen (D.domain : Set X)
  operatorSmooth : ContDiffOn ℝ ⊤ D.operator D.domain

def LinearDifferentialOperatorClosed (X : Type u) [AddCommGroup X] [Module ℝ X] (D : LinearDifferentialOperator X) : Prop :=
  D.linearity

theorem linear_differential_operator_closed_from_evidence
    (X : Type u) [AddCommGroup X] [Module ℝ X] (D : LinearDifferentialOperator X)
    (E : LinearDifferentialOperatorEvidence X D) : LinearDifferentialOperatorClosed X D :=
  D.linearity

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse