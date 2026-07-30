import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraAsymptoticStability

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure NumericalApproximationPackage {K : VolterraKernelPackage} {V : VolterraIntegralOperatorPackage K} {E : ExistenceUniquenessPackage V} (A : AsymptoticStabilityPackage E) where
  quadratureScheme : Prop
  convergenceRate : Prop
  errorBound : Prop
  implementationVerified : Prop

structure NumericalApproximationEvidence {K : VolterraKernelPackage} {V : VolterraIntegralOperatorPackage K} {E : ExistenceUniquenessPackage V} {A : AsymptoticStabilityPackage E} (N : NumericalApproximationPackage A) where
  quadratureSchemeClosed : N.quadratureScheme
  convergenceRateClosed : N.convergenceRate
  errorBoundClosed : N.errorBound
  implementationVerifiedClosed : N.implementationVerified

def NumericalApproximationClosed {K : VolterraKernelPackage} {V : VolterraIntegralOperatorPackage K} {E : ExistenceUniquenessPackage V} {A : AsymptoticStabilityPackage E} (N : NumericalApproximationPackage A) : Prop :=
  N.quadratureScheme ∧ N.convergenceRate ∧ N.errorBound ∧ N.implementationVerified

theorem numerical_approximation_closed_from_evidence {K : VolterraKernelPackage} {V : VolterraIntegralOperatorPackage K} {E : ExistenceUniquenessPackage V} {A : AsymptoticStabilityPackage E} (N : NumericalApproximationPackage A) (Ev : NumericalApproximationEvidence N) : NumericalApproximationClosed N := by
  exact And.intro Ev.quadratureSchemeClosed (And.intro Ev.convergenceRateClosed (And.intro Ev.errorBoundClosed Ev.implementationVerifiedClosed))

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse
