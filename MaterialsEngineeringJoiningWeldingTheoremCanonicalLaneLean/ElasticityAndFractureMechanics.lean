import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressStrainRelation : Prop
  youngModulus : Prop
  poissonRatio : Prop
  yieldCriterion : Prop
  fractureToughness : Prop
  crackPropagation : Prop
  stressIntensityFactor : Prop
  plasticZoneSize : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  yieldCriterionClosed : E.yieldCriterion
  fractureToughnessClosed : E.fractureToughness
  crackPropagationClosed : E.crackPropagation
  stressIntensityFactorClosed : E.stressIntensityFactor
  plasticZoneSizeClosed : E.plasticZoneSize

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainRelation ∧ E.youngModulus ∧ E.poissonRatio ∧ E.yieldCriterion ∧
  E.fractureToughness ∧ E.crackPropagation ∧ E.stressIntensityFactor ∧ E.plasticZoneSize

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.youngModulusClosed
      (And.intro Ev.poissonRatioClosed
        (And.intro Ev.yieldCriterionClosed
          (And.intro Ev.fractureToughnessClosed
            (And.intro Ev.crackPropagationClosed
              (And.intro Ev.stressIntensityFactorClosed Ev.plasticZoneSizeClosed))))))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse