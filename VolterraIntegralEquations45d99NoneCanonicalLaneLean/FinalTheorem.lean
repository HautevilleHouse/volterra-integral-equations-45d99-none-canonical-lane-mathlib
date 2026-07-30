import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.GateLemmas
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

def ConstrainedVolterraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_volterra_endgame (A : AdmissibleClass) :
    ConstrainedVolterraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse