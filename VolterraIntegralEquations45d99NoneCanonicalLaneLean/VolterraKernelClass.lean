import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure VolterraKernelPackage where
  kernelType : Type u
  timeDomain : Type v
  continuityCondition : Prop
  boundednessCondition : Prop
  integrabilityCondition : Prop

structure VolterraKernelEvidence (K : VolterraKernelPackage) where
  continuityConditionClosed : K.continuityCondition
  boundednessConditionClosed : K.boundednessCondition
  integrabilityConditionClosed : K.integrabilityCondition

def VolterraKernelClosed (K : VolterraKernelPackage) : Prop :=
  K.continuityCondition ∧ K.boundednessCondition ∧ K.integrabilityCondition

theorem volterra_kernel_closed_from_evidence (K : VolterraKernelPackage)
    (E : VolterraKernelEvidence K) : VolterraKernelClosed K := by
  exact And.intro E.continuityConditionClosed
    (And.intro E.boundednessConditionClosed E.integrabilityConditionClosed)

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse