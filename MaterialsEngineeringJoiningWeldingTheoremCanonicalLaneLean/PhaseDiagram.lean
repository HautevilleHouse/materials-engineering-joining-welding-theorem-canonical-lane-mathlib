import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Prop
  compositionRange : Prop
  phaseBoundaries : Prop
  eutecticPoint : Prop
  peritecticPoint : Prop
  metastablePhases : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeClosed : P.temperatureRange
  compositionRangeClosed : P.compositionRange
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint
  peritecticPointClosed : P.peritecticPoint
  metastablePhasesClosed : P.metastablePhases

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureRange ∧ P.compositionRange ∧ P.phaseBoundaries ∧
  P.eutecticPoint ∧ P.peritecticPoint ∧ P.metastablePhases

theorem phase_diagram_closed_from_evidence
    (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed
    (And.intro E.compositionRangeClosed
      (And.intro E.phaseBoundariesClosed
        (And.intro E.eutecticPointClosed
          (And.intro E.peritecticPointClosed E.metastablePhasesClosed))))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse