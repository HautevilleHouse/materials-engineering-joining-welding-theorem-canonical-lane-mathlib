import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure CrystallographyPackage where
  crystalSystem : Type u
  bravaisLattice : Type v
  spaceGroup : Type w
  phaseDiagram : Prop
  compositionRange : Prop
  temperatureRange : Prop
  equilibriumPhases : Prop
  latticeParameters : Prop

structure CrystallographyEvidence (X : CrystallographyPackage) where
  crystalSystemClosed : X.crystalSystem
  bravaisLatticeClosed : X.bravaisLattice
  spaceGroupClosed : X.spaceGroup
  phaseDiagramClosed : X.phaseDiagram
  compositionRangeClosed : X.compositionRange
  temperatureRangeClosed : X.temperatureRange
  equilibriumPhasesClosed : X.equilibriumPhases
  latticeParametersClosed : X.latticeParameters

def CrystallographyClosed (X : CrystallographyPackage) : Prop :=
  X.crystalSystem ∧ X.bravaisLattice ∧ X.spaceGroup ∧ X.phaseDiagram ∧
  X.compositionRange ∧ X.temperatureRange ∧ X.equilibriumPhases ∧ X.latticeParameters

theorem crystallography_closed_from_evidence (X : CrystallographyPackage) (E : CrystallographyEvidence X) : CrystallographyClosed X := by
  exact And.intro E.crystalSystemClosed
    (And.intro E.bravaisLatticeClosed
      (And.intro E.spaceGroupClosed
        (And.intro E.phaseDiagramClosed
          (And.intro E.compositionRangeClosed
            (And.intro E.temperatureRangeClosed
              (And.intro E.equilibriumPhasesClosed E.latticeParametersClosed))))))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse