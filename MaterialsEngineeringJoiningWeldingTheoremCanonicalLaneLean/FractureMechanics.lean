import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  crackTipStreesField : Prop
  stressIntensityFactor : Prop
  energyReleaseRate : Prop
  fractureToughness : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackTipStreesFieldClosed : F.crackTipStreesField
  stressIntensityFactorClosed : F.stressIntensityFactor
  energyReleaseRateClosed : F.energyReleaseRate
  fractureToughnessClosed : F.fractureToughness

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackTipStreesField ∧ F.stressIntensityFactor ∧
  F.energyReleaseRate ∧ F.fractureToughness

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.crackTipStreesFieldClosed
    (And.intro E.stressIntensityFactorClosed
      (And.intro E.energyReleaseRateClosed E.fractureToughnessClosed))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse