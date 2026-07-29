import LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.SemigroupGeneration

/-!
# Evolution Equation Package
-/

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure EvolutionEquationPackage {F : FunctionalCalculusPackage} {G : SemigroupGenerationPackage F}
    (E : G) where
  initialValueProblem : Prop
  solutionGivenBySemigroup : Prop
  wellposedness : Prop
  regularitySolutions : Prop

structure EvolutionEquationEvidence {F : FunctionalCalculusPackage} {G : SemigroupGenerationPackage F}
    {E : EvolutionEquationPackage G} (Ev : E) where
  initialValueProblemClosed : E.initialValueProblem
  solutionGivenBySemigroupClosed : E.solutionGivenBySemigroup
  wellposednessClosed : E.wellposedness
  regularitySolutionsClosed : E.regularitySolutions

def EvolutionEquationClosed {F : FunctionalCalculusPackage} {G : SemigroupGenerationPackage F}
    (E : EvolutionEquationPackage G) : Prop :=
  E.initialValueProblem ∧ E.solutionGivenBySemigroup ∧ E.wellposedness ∧ E.regularitySolutions

theorem evolution_equation_closed_from_evidence {F : FunctionalCalculusPackage}
    {G : SemigroupGenerationPackage F} {E : EvolutionEquationPackage G}
    (Ev : EvolutionEquationEvidence E) : EvolutionEquationClosed E := by
  exact And.intro Ev.initialValueProblemClosed
    (And.intro Ev.solutionGivenBySemigroupClosed
      (And.intro Ev.wellposednessClosed Ev.regularitySolutionsClosed))

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse