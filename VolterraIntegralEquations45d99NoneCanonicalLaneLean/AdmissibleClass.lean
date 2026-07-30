import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure AdmissibleClass where
  object : VolterraAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VolterraWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse