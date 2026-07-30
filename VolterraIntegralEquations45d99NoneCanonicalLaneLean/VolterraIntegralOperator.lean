import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraKernelSpace

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure VolterraIntegralOperatorPackage (K : VolterraKernelPackage) where
  operatorDomain : Type u
  operatorCodomain : Type v
  integralTransform : Prop
  linearity : Prop
  boundedness : Prop

structure VolterraIntegralOperatorEvidence {K : VolterraKernelPackage} (V : VolterraIntegralOperatorPackage K) where
  integralTransformClosed : V.integralTransform
  linearityClosed : V.linearity
  boundednessClosed : V.boundedness

def VolterraIntegralOperatorClosed {K : VolterraKernelPackage} (V : VolterraIntegralOperatorPackage K) : Prop :=
  V.integralTransform ∧ V.linearity ∧ V.boundedness

theorem volterra_integral_operator_closed_from_evidence {K : VolterraKernelPackage} (V : VolterraIntegralOperatorPackage K) (E : VolterraIntegralOperatorEvidence V) : VolterraIntegralOperatorClosed V := by
  exact And.intro E.integralTransformClosed (And.intro E.linearityClosed E.boundednessClosed)

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse
