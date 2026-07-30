import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure WeldingMetallurgyPackage where
  heatAffectedZone : Prop
  coolingRate : ℝ
  solidificationStructure : Prop
  phaseTransformations : Prop
  residualStresses : Prop
  weldDefects : Prop

structure WeldingMetallurgyEvidence (W : WeldingMetallurgyPackage) where
  heatAffectedZoneClosed : W.heatAffectedZone
  coolingRateClosed : W.coolingRate = W.coolingRate
  solidificationStructureClosed : W.solidificationStructure
  phaseTransformationsClosed : W.phaseTransformations
  residualStressesClosed : W.residualStresses
  weldDefectsClosed : W.weldDefects

def WeldingMetallurgyClosed (W : WeldingMetallurgyPackage) : Prop :=
  W.heatAffectedZone ∧ W.solidificationStructure ∧ W.phaseTransformations ∧
  W.residualStresses ∧ W.weldDefects

theorem welding_metallurgy_closed_from_evidence
    (W : WeldingMetallurgyPackage) (E : WeldingMetallurgyEvidence W) :
    WeldingMetallurgyClosed W := by
  exact And.intro E.heatAffectedZoneClosed
    (And.intro E.solidificationStructureClosed
      (And.intro E.phaseTransformationsClosed
        (And.intro E.residualStressesClosed E.weldDefectsClosed)))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse