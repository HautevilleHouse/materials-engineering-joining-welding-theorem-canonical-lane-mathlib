import MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean.WeldSolidification

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure ResidualStressPackage {A : AdmissibleClass}
    {H : HeatAffectedZonePackage A} {S : WeldSolidificationPackage H} where
  thermalStrain : Prop
  phaseTransformationStrain : Prop
  stressRelaxation : Prop
  finalStressDistribution : Prop

structure ResidualStressEvidence {A : AdmissibleClass}
    {H : HeatAffectedZonePackage A} {S : WeldSolidificationPackage H}
    (R : ResidualStressPackage S) where
  thermalStrainClosed : R.thermalStrain
  phaseTransformationStrainClosed : R.phaseTransformationStrain
  stressRelaxationClosed : R.stressRelaxation
  finalStressDistributionClosed : R.finalStressDistribution

def ResidualStressClosed {A : AdmissibleClass}
    {H : HeatAffectedZonePackage A} {S : WeldSolidificationPackage H}
    (R : ResidualStressPackage S) : Prop :=
  R.thermalStrain ∧ R.phaseTransformationStrain ∧ R.stressRelaxation ∧ R.finalStressDistribution

theorem residual_stress_closed_from_evidence
    {A : AdmissibleClass} {H : HeatAffectedZonePackage A} {S : WeldSolidificationPackage H}
    (R : ResidualStressPackage S) (E : ResidualStressEvidence R) :
    ResidualStressClosed R := by
  exact And.intro E.thermalStrainClosed
    (And.intro E.phaseTransformationStrainClosed
      (And.intro E.stressRelaxationClosed E.finalStressDistributionClosed))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse