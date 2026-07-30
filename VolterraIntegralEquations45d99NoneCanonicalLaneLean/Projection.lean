import HautevilleHouse.VolterraIntegralEquations45d99NoneCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VolterraIntegralEquations45d99NoneCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def volterraProjection : Projection VolterraEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem volterra_projection_idempotent (x : VolterraEndgameState) :
    volterraProjection.toFun (volterraProjection.toFun x) = volterraProjection.toFun x := by
  exact volterraProjection.idempotent x

end VolterraIntegralEquations45d99NoneCanonicalLaneLean
end HautevilleHouse