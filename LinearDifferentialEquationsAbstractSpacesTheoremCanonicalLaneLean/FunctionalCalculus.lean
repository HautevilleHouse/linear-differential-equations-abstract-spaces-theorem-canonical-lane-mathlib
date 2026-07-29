import LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Functional Calculus Package
-/

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure FunctionalCalculusPackage where
  operator : LinearDifferentialEquationsAbstractSpacesAdmittedObject
  borelFunctionSpace : Type
  spectralMeasure : Type
  functionalCalculusDefined : Prop
  spectralMappingHolds : Prop

structure FunctionalCalculusEvidence (F : FunctionalCalculusPackage) where
  functionalCalculusDefinedClosed : F.functionalCalculusDefined
  spectralMappingHoldsClosed : F.spectralMappingHolds

def FunctionalCalculusClosed (F : FunctionalCalculusPackage) : Prop :=
  F.functionalCalculusDefined ∧ F.spectralMappingHolds

theorem functional_calculus_closed_from_evidence (F : FunctionalCalculusPackage)
    (E : FunctionalCalculusEvidence F) : FunctionalCalculusClosed F := by
  exact And.intro E.functionalCalculusDefinedClosed E.spectralMappingHoldsClosed

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse