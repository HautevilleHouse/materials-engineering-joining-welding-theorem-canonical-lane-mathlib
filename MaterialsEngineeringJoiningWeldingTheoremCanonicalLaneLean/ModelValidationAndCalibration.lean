import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure ValidationPackage where
  experimentalData : Prop
  modelPrediction : Prop
  calibrationParameters : Prop
  errorMetrics : Prop
  sensitivityAnalysis : Prop
  uncertaintyQuantification : Prop
  validationMetrics : Prop
  domainApplicability : Prop

structure ValidationEvidence (V : ValidationPackage) where
  experimentalDataClosed : V.experimentalData
  modelPredictionClosed : V.modelPrediction
  calibrationParametersClosed : V.calibrationParameters
  errorMetricsClosed : V.errorMetrics
  sensitivityAnalysisClosed : V.sensitivityAnalysis
  uncertaintyQuantificationClosed : V.uncertaintyQuantification
  validationMetricsClosed : V.validationMetrics
  domainApplicabilityClosed : V.domainApplicability

def ValidationClosed (V : ValidationPackage) : Prop :=
  V.experimentalData ∧ V.modelPrediction ∧ V.calibrationParameters ∧ V.errorMetrics ∧
  V.sensitivityAnalysis ∧ V.uncertaintyQuantification ∧ V.validationMetrics ∧ V.domainApplicability

theorem validation_closed_from_evidence (V : ValidationPackage) (E : ValidationEvidence V) : ValidationClosed V := by
  exact And.intro E.experimentalDataClosed
    (And.intro E.modelPredictionClosed
      (And.intro E.calibrationParametersClosed
        (And.intro E.errorMetricsClosed
          (And.intro E.sensitivityAnalysisClosed
            (And.intro E.uncertaintyQuantificationClosed
              (And.intro E.validationMetricsClosed E.domainApplicabilityClosed))))))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse