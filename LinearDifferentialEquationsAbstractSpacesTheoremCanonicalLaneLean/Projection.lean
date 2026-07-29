import LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def linearDEProjection : Projection LinearDEEndgameState :=
  { toFun := fun x => x
    idempotent := by intro x; rfl }

theorem linear_de_projection_idempotent (x : LinearDEEndgameState) :
    linearDEProjection.toFun (linearDEProjection.toFun x) = linearDEProjection.toFun x :=
  linearDEProjection.idempotent x

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse