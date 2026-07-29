import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure AbstractSobolevSpacePackage where
  domainSpace : Type u
  normDefined : Prop
  embeddingTheorems : Prop
  compactnessProperties : Prop

structure AbstractSobolevSpaceEvidence (P : AbstractSobolevSpacePackage) where
  normDefinedClosed : P.normDefined
  embeddingTheoremsClosed : P.embeddingTheorems
  compactnessPropertiesClosed : P.compactnessProperties

def AbstractSobolevSpaceClosed (P : AbstractSobolevSpacePackage) : Prop :=
  P.normDefined ∧ P.embeddingTheorems ∧ P.compactnessProperties

theorem abstract_sobolev_space_closed_from_evidence (P : AbstractSobolevSpacePackage)
    (E : AbstractSobolevSpaceEvidence P) : AbstractSobolevSpaceClosed P := by
  exact And.intro E.normDefinedClosed (And.intro E.embeddingTheoremsClosed E.compactnessPropertiesClosed)

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse
