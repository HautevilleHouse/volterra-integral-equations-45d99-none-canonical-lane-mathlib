import canonicalLaneMathlib.AdmissibleClass

/-!
# Volterra Integral Equation Package

This module defines the core structures for Volterra integral equations of the second kind:
  y(t) = f(t) + ∫_{a}^{t} K(t,s,y(s)) ds
-/

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure VolterraAdmittedObject where
  space : Type u
  kernel : space → space → space → space
  freeTerm : space → space
  solution : space → space
  conclusion : Prop

structure VolterraIntegralEquationPackage where
  domain : Type u
  codomain : Type v
  kernel : domain → domain → codomain → codomain
  freeTerm : domain → codomain
  solution : domain → codomain
  integralConstraint : Prop
  uniqueSolution : Prop
  continuousDependence : Prop

structure VolterraIntegralEquationEvidence (V : VolterraIntegralEquationPackage) where
  integralConstraintClosed : V.integralConstraint
  uniqueSolutionClosed : V.uniqueSolution
  continuousDependenceClosed : V.continuousDependence

def VolterraIntegralEquationClosed (V : VolterraIntegralEquationPackage) : Prop :=
  V.integralConstraint ∧ V.uniqueSolution ∧ V.continuousDependence

theorem volterra_integral_equation_closed_from_evidence
    (V : VolterraIntegralEquationPackage) (E : VolterraIntegralEquationEvidence V) :
    VolterraIntegralEquationClosed V := by
  exact And.intro E.integralConstraintClosed
    (And.intro E.uniqueSolutionClosed E.continuousDependenceClosed)

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse