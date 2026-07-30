import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraIntegralEquationPackage

/-!
# Resolvent Kernel Package

Defines the resolvent kernel and Neumann series solution for Volterra equations.
-/

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure ResolventKernelPackage {V : VolterraIntegralEquationPackage} where
  iteratedKernels : ℕ → (V.domain → V.domain → V.codomain → V.codomain)
  resolventKernel : V.domain → V.domain → V.codomain → V.codomain
  neumannSeriesConverges : Prop
  solutionRepresentation : Prop

structure ResolventKernelEvidence {V : VolterraIntegralEquationPackage}
    (R : ResolventKernelPackage V) where
  neumannSeriesConvergesClosed : R.neumannSeriesConverges
  solutionRepresentationClosed : R.solutionRepresentation

def ResolventKernelClosed {V : VolterraIntegralEquationPackage}
    (R : ResolventKernelPackage V) : Prop :=
  R.neumannSeriesConverges ∧ R.solutionRepresentation

theorem resolvent_kernel_closed_from_evidence
    {V : VolterraIntegralEquationPackage} (R : ResolventKernelPackage V)
    (E : ResolventKernelEvidence R) : ResolventKernelClosed R := by
  exact And.intro E.neumannSeriesConvergesClosed E.solutionRepresentationClosed

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse