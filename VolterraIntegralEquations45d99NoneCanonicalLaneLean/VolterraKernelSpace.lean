import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure VolterraKernelPackage where
  kernelType : Type u
  continuity : Prop
  integrability : Prop
  boundedness : Prop

structure VolterraKernelEvidence (K : VolterraKernelPackage) where
  continuityClosed : K.continuity
  integrabilityClosed : K.integrability
  boundednessClosed : K.boundedness

def VolterraKernelClosed (K : VolterraKernelPackage) : Prop := K.continuity ∧ K.integrability ∧ K.boundedness

theorem volterra_kernel_closed_from_evidence (K : VolterraKernelPackage) (E : VolterraKernelEvidence K) : VolterraKernelClosed K := by
  exact And.intro E.continuityClosed (And.intro E.integrabilityClosed E.boundednessClosed)

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse
