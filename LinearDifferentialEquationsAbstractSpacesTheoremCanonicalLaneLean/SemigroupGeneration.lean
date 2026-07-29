import LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.FunctionalCalculus

/-!
# Semigroup Generation Package
-/

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure SemigroupGenerationPackage {F : FunctionalCalculusPackage} (G : F) where
  generator : LinearDifferentialEquationsAbstractSpacesAdmittedObject
  semigroup : F.borelFunctionSpace → (ℝ → carrier)
  generationTheoremHolds : Prop
  domainDeterminesGenerator : Prop

structure SemigroupGenerationEvidence {F : FunctionalCalculusPackage} {G : SemigroupGenerationPackage F}
    (E : G) where
  generationTheoremHoldsClosed : G.generationTheoremHolds
  domainDeterminesGeneratorClosed : G.domainDeterminesGenerator

def SemigroupGenerationClosed {F : FunctionalCalculusPackage} (G : SemigroupGenerationPackage F) : Prop :=
  G.generationTheoremHolds ∧ G.domainDeterminesGenerator

theorem semigroup_generation_closed_from_evidence {F : FunctionalCalculusPackage}
    (G : SemigroupGenerationPackage F) (E : SemigroupGenerationEvidence G) : SemigroupGenerationClosed G := by
  exact And.intro E.generationTheoremHoldsClosed E.domainDeterminesGeneratorClosed

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse