import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraIntegralOperator

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure VolterraConvolutionType (α : Type u) [TopologicalSpace α] [AddCommMonoid α] [SMul ℝ α]
  (V : VolterraIntegralOperator α) where
  convolutionKernel : α → ℝ
  convolutionTransform : (α → ℝ) → (α → ℝ)
  convolutionEquation : ∀ (f : α → ℝ) (x : α),
    V.integralTransform f x = ∫ y in Set.Ioo (0 : α) x, convolutionKernel (x - y) * f y
  kernelIntegrability : Prop
  kernelContinuity : Prop

structure VolterraConvolutionTypeEvidence (α : Type u) [TopologicalSpace α] [AddCommMonoid α] [SMul ℝ α]
  {V : VolterraIntegralOperator α} (C : VolterraConvolutionType α V) where
  convolutionEquationClosed : ∀ (f : α → ℝ) (x : α),
    V.integralTransform f x = ∫ y in Set.Ioo (0 : α) x, C.convolutionKernel (x - y) * f y
  kernelIntegrabilityClosed : C.kernelIntegrability
  kernelContinuityClosed : C.kernelContinuity

def VolterraConvolutionTypeClosed (α : Type u) [TopologicalSpace α] [AddCommMonoid α] [SMul ℝ α]
  (V : VolterraIntegralOperator α) (C : VolterraConvolutionType α V) : Prop :=
  (∀ (f : α → ℝ) (x : α), V.integralTransform f x = ∫ y in Set.Ioo (0 : α) x, C.convolutionKernel (x - y) * f y) ∧
  C.kernelIntegrability ∧ C.kernelContinuity

theorem volterra_convolution_type_closed_from_evidence
    (α : Type u) [TopologicalSpace α] [AddCommMonoid α] [SMul ℝ α]
    (V : VolterraIntegralOperator α) (C : VolterraConvolutionType α V)
    (E : VolterraConvolutionTypeEvidence α C) : VolterraConvolutionTypeClosed α V C := by
  exact And.intro E.convolutionEquationClosed
    (And.intro E.kernelIntegrabilityClosed E.kernelContinuityClosed)

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse
