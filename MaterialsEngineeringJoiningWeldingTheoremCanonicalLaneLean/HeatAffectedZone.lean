import MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure HeatAffectedZonePackage (A : AdmissibleClass) where
  thermalCycle : Prop
  peakTemperature : Prop
  coolingRate : Prop
  microstructureChange : Prop

structure HeatAffectedZoneEvidence {A : AdmissibleClass} (H : HeatAffectedZonePackage A) where
  thermalCycleClosed : H.thermalCycle
  peakTemperatureClosed : H.peakTemperature
  coolingRateClosed : H.coolingRate
  microstructureChangeClosed : H.microstructureChange

def HeatAffectedZoneClosed {A : AdmissibleClass} (H : HeatAffectedZonePackage A) : Prop :=
  H.thermalCycle ∧ H.peakTemperature ∧ H.coolingRate ∧ H.microstructureChange

theorem heat_affected_zone_closed_from_evidence
    {A : AdmissibleClass} (H : HeatAffectedZonePackage A) (E : HeatAffectedZoneEvidence H) :
    HeatAffectedZoneClosed H := by
  exact And.intro E.thermalCycleClosed
    (And.intro E.peakTemperatureClosed
      (And.intro E.coolingRateClosed E.microstructureChangeClosed))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse