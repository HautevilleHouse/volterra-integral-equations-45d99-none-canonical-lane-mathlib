import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraIntegralOperator

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure VolterraResolventKernel (α : Type u) [TopologicalSpace α] [AddCommMonoid α] [SMul ℝ α]
  (V : VolterraIntegralOperator α) where
  resolventKernel : α → α → ℝ
  resolventEquation : ∀ (f : α → ℝ) (x : α),
    V.integralTransform f x = (∫ y in {y | (y,x) ∈ V.domain}, resolventKernel x y * f y) ∧
    (λ x' => f x' + V.integralTransform f x') = (λ x' => f x' + ∫ y in {y | (y,x') ∈ V.domain}, resolventKernel x' y * f y)
  kernelRegularity : Prop
  uniqueSolutionMap : (α → ℝ) → (α → ℝ)

theorem resolvent_yields_solution (α : Type u) [TopologicalSpace α] [AddCommMonoid α] [SMul ℝ α]
  (V : VolterraIntegralOperator α) (R : VolterraResolventKernel α V) (f : α → ℝ) :
  (λ x : α => f x + V.integralTransform f x) = (λ x : α => f x + ∫ y in {y | (y,x) ∈ V.domain}, R.resolventKernel x y * f y) :=
  by
    funext x
    exact (R.resolventEquation f x).right

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse
