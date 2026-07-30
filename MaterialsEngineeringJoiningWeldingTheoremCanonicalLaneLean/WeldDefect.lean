import MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean.ResidualStress

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure WeldDefectPackage {A : AdmissibleClass}
    {H : HeatAffectedZonePackage A} {S : WeldSolidificationPackage H}
    {R : ResidualStressPackage S} where
  porosityFormation : Prop
  hotCracking : Prop
  coldCracking : Prop
  fatigueInitiation : Prop

structure WeldDefectEvidence {A : AdmissibleClass}
    {H : HeatAffectedZonePackage A} {S : WeldSolidificationPackage H}
    {R : ResidualStressPackage S} (D : WeldDefectPackage R) where
  porosityFormationClosed : D.porosityFormation
  hotCrackingClosed : D.hotCracking
  coldCrackingClosed : D.coldCracking
  fatigueInitiationClosed : D.fatigueInitiation

def WeldDefectClosed {A : AdmissibleClass}
    {H : HeatAffectedZonePackage A} {S : WeldSolidificationPackage H}
    {R : ResidualStressPackage S} (D : WeldDefectPackage R) : Prop :=
  D.porosityFormation ∧ D.hotCracking ∧ D.coldCracking ∧ D.fatigueInitiation

theorem weld_defect_closed_from_evidence
    {A : AdmissibleClass} {H : HeatAffectedZonePackage A} {S : WeldSolidificationPackage H}
    {R : ResidualStressPackage S} (D : WeldDefectPackage R) (E : WeldDefectEvidence D) :
    WeldDefectClosed D := by
  exact And.intro E.porosityFormationClosed
    (And.intro E.hotCrackingClosed
      (And.intro E.coldCrackingClosed E.fatigueInitiationClosed))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse