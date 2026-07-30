import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  constitutiveLaw : Prop
  youngModulus : ℝ
  poissonRatio : ℝ
  yieldStrength : ℝ

structure ElasticityEvidence (E : ElasticityPackage) where
  constitutiveLawClosed : E.constitutiveLaw
  youngModulusClosed : E.youngModulus = E.youngModulus
  poissonRatioClosed : E.poissonRatio = E.poissonRatio
  yieldStrengthClosed : E.yieldStrength = E.yieldStrength

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.constitutiveLaw

theorem elasticity_closed_from_evidence
    (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact Ev.constitutiveLawClosed

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse