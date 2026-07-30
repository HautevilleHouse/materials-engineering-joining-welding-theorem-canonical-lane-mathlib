import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure WeldingHeatTransferPackage where
  heatSourceModel : Prop
  thermalConductivity : Prop
  specificHeat : Prop
  convectiveHeatTransfer : Prop
  latentHeat : Prop
  fluidFlowInWeldPool : Prop
  marangoniConvection : Prop
  weldPoolGeometry : Prop

structure WeldingHeatTransferEvidence (W : WeldingHeatTransferPackage) where
  heatSourceModelClosed : W.heatSourceModel
  thermalConductivityClosed : W.thermalConductivity
  specificHeatClosed : W.specificHeat
  convectiveHeatTransferClosed : W.convectiveHeatTransfer
  latentHeatClosed : W.latentHeat
  fluidFlowInWeldPoolClosed : W.fluidFlowInWeldPool
  marangoniConvectionClosed : W.marangoniConvection
  weldPoolGeometryClosed : W.weldPoolGeometry

def WeldingHeatTransferClosed (W : WeldingHeatTransferPackage) : Prop :=
  W.heatSourceModel ∧ W.thermalConductivity ∧ W.specificHeat ∧ W.convectiveHeatTransfer ∧
  W.latentHeat ∧ W.fluidFlowInWeldPool ∧ W.marangoniConvection ∧ W.weldPoolGeometry

theorem welding_heat_transfer_closed_from_evidence (W : WeldingHeatTransferPackage) (E : WeldingHeatTransferEvidence W) : WeldingHeatTransferClosed W := by
  exact And.intro E.heatSourceModelClosed
    (And.intro E.thermalConductivityClosed
      (And.intro E.specificHeatClosed
        (And.intro E.convectiveHeatTransferClosed
          (And.intro E.latentHeatClosed
            (And.intro E.fluidFlowInWeldPoolClosed
              (And.intro E.marangoniConvectionClosed E.weldPoolGeometryClosed))))))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse