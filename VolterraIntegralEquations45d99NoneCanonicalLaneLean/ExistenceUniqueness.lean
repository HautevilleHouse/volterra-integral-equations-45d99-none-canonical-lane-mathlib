import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraIntegralEquationPackage

/-!
# Existence and Uniqueness Package

Provides conditions for existence and uniqueness of solutions via Picard iteration.
-/

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure ExistenceUniquenessPackage {V : VolterraIntegralEquationPackage} where
  lipschitzKernel : Prop
  iterationConverges : Prop
  fixedPointUnique : Prop
  continuousDependence : Prop

structure ExistenceUniquenessEvidence {V : VolterraIntegralEquationPackage}
    (E : ExistenceUniquenessPackage V) where
  lipschitzKernelClosed : E.lipschitzKernel
  iterationConvergesClosed : E.iterationConverges
  fixedPointUniqueClosed : E.fixedPointUnique
  continuousDependenceClosed : E.continuousDependence

def ExistenceUniquenessClosed {V : VolterraIntegralEquationPackage}
    (E : ExistenceUniquenessPackage V) : Prop :=
  E.lipschitzKernel ∧ E.iterationConverges ∧ E.fixedPointUnique ∧ E.continuousDependence

theorem existence_uniqueness_closed_from_evidence
    {V : VolterraIntegralEquationPackage} (E : ExistenceUniquenessPackage V)
    (Ev : ExistenceUniquenessEvidence E) : ExistenceUniquenessClosed E := by
  exact And.intro Ev.lipschitzKernelClosed
    (And.intro Ev.iterationConvergesClosed
      (And.intro Ev.fixedPointUniqueClosed Ev.continuousDependenceClosed))

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse