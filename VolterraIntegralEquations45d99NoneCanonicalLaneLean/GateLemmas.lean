import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse