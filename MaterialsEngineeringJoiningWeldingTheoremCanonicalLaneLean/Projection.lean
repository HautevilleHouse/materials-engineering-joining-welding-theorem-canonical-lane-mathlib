import MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def weldingProjection : Projection WeldingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem welding_projection_idempotent (x : WeldingEndgameState) :
    weldingProjection.toFun (weldingProjection.toFun x) = weldingProjection.toFun x := by
  exact weldingProjection.idempotent x

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse