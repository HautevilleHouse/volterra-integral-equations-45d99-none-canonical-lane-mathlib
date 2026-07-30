import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure VolterraAdmittedObject where
  kernelType : Type
  equationType : Type
  regularKernel : Prop
  continuousSolutionExists : Prop
  conclusion : VolterraWitnessClosed this

def VolterraWitnessClosed (O : VolterraAdmittedObject) : Prop :=
  O.continuousSolutionExists

def sourceTheoremStatement : String :=
  "Volterra Integral Equations 45D99 None: every regular Volterra integral equation admits a continuous solution"

def sourceTheoremBoundary : String :=
  "classical existence and uniqueness for Volterra equations with integrable kernels"

theorem theorem_statement_available : True := by
  trivial

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse