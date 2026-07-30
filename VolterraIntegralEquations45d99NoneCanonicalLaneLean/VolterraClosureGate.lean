import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraAdmissibleClass

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VolterraWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.solution.equationSatisfiedClosed

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedVolterraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem volterra_endgame (A : AdmissibleClass) : ConstrainedVolterraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse
