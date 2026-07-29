import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure EllipticRegularityPackage where
  operatorDomain : Type u
  regularityExponent : Nat
  interiorRegularity : Prop
  boundaryRegularity : Prop
  smoothnessPropagation : Prop

structure EllipticRegularityEvidence (P : EllipticRegularityPackage) where
  interiorRegularityClosed : P.interiorRegularity
  boundaryRegularityClosed : P.boundaryRegularity
  smoothnessPropagationClosed : P.smoothnessPropagation

def EllipticRegularityClosed (P : EllipticRegularityPackage) : Prop :=
  P.interiorRegularity ∧ P.boundaryRegularity ∧ P.smoothnessPropagation

theorem elliptic_regularity_closed_from_evidence (P : EllipticRegularityPackage)
    (E : EllipticRegularityEvidence P) : EllipticRegularityClosed P := by
  exact And.intro E.interiorRegularityClosed (And.intro E.boundaryRegularityClosed E.smoothnessPropagationClosed)

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse
