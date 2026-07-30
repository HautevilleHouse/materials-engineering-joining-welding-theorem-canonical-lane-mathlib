import MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure WeldingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WeldingAdmittedObject where
  space : WeldingSpace
  weldableMaterial : Prop
  jointConfiguration : Prop
  weldModel : Type
  weldTopology : TopologicalSpace weldModel
  weldStrengthValid : Prop
  conclusion : weldStrengthValid

structure WeldingEndgameState where
  object : WeldingAdmittedObject

def WeldingWitnessClosed (O : WeldingAdmittedObject) : Prop :=
  O.weldStrengthValid

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse