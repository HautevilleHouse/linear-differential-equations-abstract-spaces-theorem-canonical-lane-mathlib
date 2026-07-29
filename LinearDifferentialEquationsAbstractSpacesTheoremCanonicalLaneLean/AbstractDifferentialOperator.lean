import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure AbstractDifferentialOperatorPackage where
  baseSpace : Type u
  fiberSpace : Type v
  domain : Type w
  codomain : Type z
  operator : domain → codomain
  linearity : Prop
  boundedness : Prop
  closedness : Prop

structure AbstractDifferentialOperatorEvidence (P : AbstractDifferentialOperatorPackage) where
  linearityClosed : P.linearity
  boundednessClosed : P.boundedness
  closednessClosed : P.closedness

def AbstractDifferentialOperatorClosed (P : AbstractDifferentialOperatorPackage) : Prop :=
  P.linearity ∧ P.boundedness ∧ P.closedness

theorem abstract_differential_operator_closed_from_evidence (P : AbstractDifferentialOperatorPackage)
    (E : AbstractDifferentialOperatorEvidence P) : AbstractDifferentialOperatorClosed P := by
  exact And.intro E.linearityClosed (And.intro E.boundednessClosed E.closednessClosed)

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse
