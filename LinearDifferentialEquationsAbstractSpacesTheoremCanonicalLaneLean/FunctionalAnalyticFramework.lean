import HautevilleHouse.LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure FunctionalAnalyticPackage where
  space : Type u
  norm : space → ℝ
  innerProduct : space → space → ℝ
  completeness : Prop
  separability : Prop
  reflexivity : Prop

def FunctionalAnalyticPackageClosed (F : FunctionalAnalyticPackage) : Prop :=
  F.completeness ∧ F.separability ∧ F.reflexivity

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse