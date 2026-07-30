import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  thermodynamicPotentials : Prop
  gibbsPhaseRule : Prop
  solidificationPaths : Prop
  eutecticMicrostructures : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  thermodynamicPotentialsClosed : P.thermodynamicPotentials
  gibbsPhaseRuleClosed : P.gibbsPhaseRule
  solidificationPathsClosed : P.solidificationPaths
  eutecticMicrostructuresClosed : P.eutecticMicrostructures

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.thermodynamicPotentials ∧ P.gibbsPhaseRule ∧
  P.solidificationPaths ∧ P.eutecticMicrostructures

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.thermodynamicPotentialsClosed
    (And.intro E.gibbsPhaseRuleClosed
      (And.intro E.solidificationPathsClosed E.eutecticMicrostructuresClosed))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse