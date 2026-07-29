import LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AbstractSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  linearStructure : AddCommGroup carrier
  norm : carrier → ℝ
  normed : NormedAddCommGroup carrier

structure LinearDifferentialEquationsAbstractSpacesAdmittedObject where
  space : AbstractSpace
  operator : carrier → carrier
  operatorClosed : Prop
  domain : Set carrier
  range : Set carrier
  spectrum : Set ℂ
  solutionSpace : VectorSpace ℂ (carrier → ℂ)
  conclusion : operatorClosed

structure LinearDifferentialEquationsAbstractSpacesEndgameState where
  object : LinearDifferentialEquationsAbstractSpacesAdmittedObject

def LinearDifferentialEquationsAbstractSpacesWitnessClosed (O : LinearDifferentialEquationsAbstractSpacesAdmittedObject) : Prop :=
  O.operatorClosed

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse