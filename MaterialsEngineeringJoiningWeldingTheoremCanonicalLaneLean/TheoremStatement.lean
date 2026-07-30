import HautevilleHouse.MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

def WeldingWitnessClosed (O : WeldingAdmittedObject) : Prop :=
  O.mechanicalStrengthMet

theorem weld_joint_meets_strength (W : WeldingAdmittedObject) : WeldingWitnessClosed W :=
  W.conclusion

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse