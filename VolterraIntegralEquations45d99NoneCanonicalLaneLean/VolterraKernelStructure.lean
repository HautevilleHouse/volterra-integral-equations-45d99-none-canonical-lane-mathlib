import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure VolterraKernelPackage where
  kernelFunc : Type
  domain : Type
  continuity : Prop
  boundedness : Prop
  integrability : Prop

def kernelAdmissible (K : VolterraKernelPackage) : Prop :=
  K.continuity ∧ K.boundedness ∧ K.integrability

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse