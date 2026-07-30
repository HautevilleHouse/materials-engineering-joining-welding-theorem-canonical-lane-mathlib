import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure ProcessParameterPackage where
  heatInput : Prop
  weldingSpeed : Prop
  arcVoltage : Prop
  wireFeedRate : Prop
  shieldingGas : Prop
  preheatTemperature : Prop
  interpassTemperature : Prop
  postWeldHeatTreatment : Prop

structure ProcessParameterEvidence (P : ProcessParameterPackage) where
  heatInputClosed : P.heatInput
  weldingSpeedClosed : P.weldingSpeed
  arcVoltageClosed : P.arcVoltage
  wireFeedRateClosed : P.wireFeedRate
  shieldingGasClosed : P.shieldingGas
  preheatTemperatureClosed : P.preheatTemperature
  interpassTemperatureClosed : P.interpassTemperature
  postWeldHeatTreatmentClosed : P.postWeldHeatTreatment

def ProcessParameterClosed (P : ProcessParameterPackage) : Prop :=
  P.heatInput ∧ P.weldingSpeed ∧ P.arcVoltage ∧ P.wireFeedRate ∧
  P.shieldingGas ∧ P.preheatTemperature ∧ P.interpassTemperature ∧ P.postWeldHeatTreatment

theorem process_parameter_closed_from_evidence (P : ProcessParameterPackage) (E : ProcessParameterEvidence P) : ProcessParameterClosed P := by
  exact And.intro E.heatInputClosed
    (And.intro E.weldingSpeedClosed
      (And.intro E.arcVoltageClosed
        (And.intro E.wireFeedRateClosed
          (And.intro E.shieldingGasClosed
            (And.intro E.preheatTemperatureClosed
              (And.intro E.interpassTemperatureClosed E.postWeldHeatTreatmentClosed))))))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse