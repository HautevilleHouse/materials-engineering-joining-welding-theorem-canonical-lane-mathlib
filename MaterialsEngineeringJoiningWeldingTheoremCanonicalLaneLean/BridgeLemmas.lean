import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (∀ (x : A.object.weldCarrier), A.object.weldCondition)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.weldCondition

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse