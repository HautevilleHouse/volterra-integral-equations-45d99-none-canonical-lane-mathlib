import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure VolterraKernelPackage where
  domain : Type u
  range : Type v
  kernelFunction : domain → domain → range
  continuity : Prop
  boundedness : Prop
  continuityTerm : continuity
  boundednessTerm : boundedness

structure VolterraKernelEvidence (K : VolterraKernelPackage) where
  continuityClosed : K.continuity
  boundednessClosed : K.boundedness

def VolterraKernelClosed (K : VolterraKernelPackage) : Prop :=
  K.continuity ∧ K.boundedness

theorem volterra_kernel_closed_from_evidence (K : VolterraKernelPackage)
    (E : VolterraKernelEvidence K) : VolterraKernelClosed K := by
  exact And.intro E.continuityClosed E.boundednessClosed

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse