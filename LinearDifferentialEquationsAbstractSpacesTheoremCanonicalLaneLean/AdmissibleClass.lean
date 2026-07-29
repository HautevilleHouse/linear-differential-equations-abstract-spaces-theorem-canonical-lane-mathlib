import LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LinearDifferentialEquationsAbstractSpacesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LinearDifferentialEquationsAbstractSpacesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse