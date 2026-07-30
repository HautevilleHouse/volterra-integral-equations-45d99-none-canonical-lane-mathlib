import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraIEAdmissibleClass

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VolterraWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.kernelAdmissible

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse