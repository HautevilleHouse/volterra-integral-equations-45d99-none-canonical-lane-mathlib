import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraIntegralOperator

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure VolterraEquationSolution (α : Type u) [TopologicalSpace α] [AddCommMonoid α] [SMul ℝ α]
  (V : VolterraIntegralOperator α) where
  unknownFunction : α → ℝ
  sourceTerm : α → ℝ
  equationSatisfied : ∀ x : α, unknownFunction x = sourceTerm x + V.integralTransform unknownFunction x
  regularity : Prop
  uniqueness : Prop

structure VolterraEquationSolutionEvidence (α : Type u) [TopologicalSpace α] [AddCommMonoid α] [SMul ℝ α]
  {V : VolterraIntegralOperator α} (S : VolterraEquationSolution α V) where
  equationSatisfiedClosed : ∀ x : α, S.unknownFunction x = S.sourceTerm x + V.integralTransform S.unknownFunction x
  regularityClosed : S.regularity
  uniquenessClosed : S.uniqueness

def VolterraEquationSolutionClosed (α : Type u) [TopologicalSpace α] [AddCommMonoid α] [SMul ℝ α]
  (V : VolterraIntegralOperator α) (S : VolterraEquationSolution α V) : Prop :=
  (∀ x : α, S.unknownFunction x = S.sourceTerm x + V.integralTransform S.unknownFunction x) ∧
  S.regularity ∧ S.uniqueness

theorem volterra_equation_solution_closed_from_evidence
    (α : Type u) [TopologicalSpace α] [AddCommMonoid α] [SMul ℝ α]
    (V : VolterraIntegralOperator α) (S : VolterraEquationSolution α V)
    (E : VolterraEquationSolutionEvidence α S) : VolterraEquationSolutionClosed α V S := by
  exact And.intro E.equationSatisfiedClosed
    (And.intro E.regularityClosed E.uniquenessClosed)

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse
