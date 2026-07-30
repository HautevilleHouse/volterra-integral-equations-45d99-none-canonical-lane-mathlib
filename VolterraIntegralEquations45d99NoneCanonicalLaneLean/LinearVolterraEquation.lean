import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraKernelPackage

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure LinearVolterraEquationPackage (K : VolterraKernelPackage) where
  interval : Set ℝ
  unknownFunction : ℝ → ℝ
  sourceTerm : ℝ → ℝ
  equation : Prop
  equationTerm : equation

structure LinearVolterraEquationEvidence (K : VolterraKernelPackage)
    (L : LinearVolterraEquationPackage K) where
  equationClosed : L.equation

def LinearVolterraEquationClosed (K : VolterraKernelPackage)
    (L : LinearVolterraEquationPackage K) : Prop :=
  L.equation

theorem linear_volterra_equation_closed_from_evidence (K : VolterraKernelPackage)
    (L : LinearVolterraEquationPackage K) (E : LinearVolterraEquationEvidence K L) :
    LinearVolterraEquationClosed K L := by
  exact E.equationClosed

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse