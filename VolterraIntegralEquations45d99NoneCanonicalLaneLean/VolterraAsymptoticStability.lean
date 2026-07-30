import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraExistenceUniqueness

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure AsymptoticStabilityPackage {K : VolterraKernelPackage} {V : VolterraIntegralOperatorPackage K} (E : ExistenceUniquenessPackage V) where
  stabilityCondition : Prop
  equilibriumClassification : Prop
  decayRate : Prop
  perturbationTolerance : Prop

structure AsymptoticStabilityEvidence {K : VolterraKernelPackage} {V : VolterraIntegralOperatorPackage K} {E : ExistenceUniquenessPackage V} (A : AsymptoticStabilityPackage E) where
  stabilityConditionClosed : A.stabilityCondition
  equilibriumClassificationClosed : A.equilibriumClassification
  decayRateClosed : A.decayRate
  perturbationToleranceClosed : A.perturbationTolerance

def AsymptoticStabilityClosed {K : VolterraKernelPackage} {V : VolterraIntegralOperatorPackage K} {E : ExistenceUniquenessPackage V} (A : AsymptoticStabilityPackage E) : Prop :=
  A.stabilityCondition ∧ A.equilibriumClassification ∧ A.decayRate ∧ A.perturbationTolerance

theorem asymptotic_stability_closed_from_evidence {K : VolterraKernelPackage} {V : VolterraIntegralOperatorPackage K} {E : ExistenceUniquenessPackage V} (A : AsymptoticStabilityPackage E) (Ev : AsymptoticStabilityEvidence A) : AsymptoticStabilityClosed A := by
  exact And.intro Ev.stabilityConditionClosed (And.intro Ev.equilibriumClassificationClosed (And.intro Ev.decayRateClosed Ev.perturbationToleranceClosed))

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse
