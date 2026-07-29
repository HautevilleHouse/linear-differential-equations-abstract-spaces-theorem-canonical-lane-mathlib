import LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LinearDifferentialEquationsAbstractSpacesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse