import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure IndexTheoremPackage where
  operatorDomain : Type u
  indexDefined : Prop
  indexInvariance : Prop
  relationToTopology : Prop
  cohomologicalFormulation : Prop

structure IndexTheoremEvidence (P : IndexTheoremPackage) where
  indexDefinedClosed : P.indexDefined
  indexInvarianceClosed : P.indexInvariance
  relationToTopologyClosed : P.relationToTopology
  cohomologicalFormulationClosed : P.cohomologicalFormulation

def IndexTheoremClosed (P : IndexTheoremPackage) : Prop :=
  P.indexDefined ∧ P.indexInvariance ∧ P.relationToTopology ∧ P.cohomologicalFormulation

theorem index_theorem_closed_from_evidence (P : IndexTheoremPackage)
    (E : IndexTheoremEvidence P) : IndexTheoremClosed P := by
  exact And.intro E.indexDefinedClosed (And.intro E.indexInvarianceClosed
    (And.intro E.relationToTopologyClosed E.cohomologicalFormulationClosed))

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse
