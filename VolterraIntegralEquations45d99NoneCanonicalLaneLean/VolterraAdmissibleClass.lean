import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraIntegralOperator
import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.VolterraEquationSolution

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

structure VolterraAdmittedObject where
  operator : VolterraIntegralOperator ℝ
  solution : VolterraEquationSolution ℝ operator
  resolventKernel : VolterraResolventKernel ℝ operator
  convolutionStructure : VolterraConvolutionType ℝ operator

def VolterraWitnessClosed (O : VolterraAdmittedObject) : Prop :=
  VolterraEquationSolutionClosed ℝ O.operator O.solution

def VolterraEndgameState where
  object : VolterraAdmittedObject

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse
