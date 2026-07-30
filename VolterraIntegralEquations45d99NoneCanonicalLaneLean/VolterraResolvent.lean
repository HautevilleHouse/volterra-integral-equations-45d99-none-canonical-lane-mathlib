import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.ExistenceUniqueness

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure VolterraResolventPackage (K : VolterraKernelPackage)
    (L : LinearVolterraEquationPackage K) (E : ExistenceUniquenessPackage K L) where
  resolventKernel : K.domain → K.domain → K.range
  resolventEquation : Prop
  resolventEquationTerm : resolventEquation

structure VolterraResolventEvidence (K : VolterraKernelPackage)
    (L : LinearVolterraEquationPackage K) (E : ExistenceUniquenessPackage K L)
    (R : VolterraResolventPackage K L E) where
  resolventEquationClosed : R.resolventEquation

def VolterraResolventClosed (K : VolterraKernelPackage)
    (L : LinearVolterraEquationPackage K) (E : ExistenceUniquenessPackage K L)
    (R : VolterraResolventPackage K L E) : Prop :=
  R.resolventEquation

theorem volterra_resolvent_closed_from_evidence (K : VolterraKernelPackage)
    (L : LinearVolterraEquationPackage K) (E : ExistenceUniquenessPackage K L)
    (R : VolterraResolventPackage K L E) (Ev : VolterraResolventEvidence K L E R) :
    VolterraResolventClosed K L E R := by
  exact Ev.resolventEquationClosed

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse