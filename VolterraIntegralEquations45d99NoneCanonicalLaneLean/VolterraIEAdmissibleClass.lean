import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraKernelStructure

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure VolterraAdmittedObject where
  kernel : VolterraKernelPackage
  kernelAdmissible : kernelAdmissible kernel
  solutionExists : Prop
  uniqueness : Prop
  continuousDependence : Prop

def VolterraWitnessClosed (O : VolterraAdmittedObject) : Prop :=
  O.solutionExists ∧ O.uniqueness ∧ O.continuousDependence

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse