import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Type u
  unitCell : Type v
  atomicPositions : Type w
  symmorphic : Prop
  iucNotation : Prop
  bravaisLattice : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  symmorphicClosed : C.symmorphic
  iucNotationClosed : C.iucNotation
  bravaisLatticeClosed : C.bravaisLattice

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.symmorphic ∧ C.iucNotation ∧ C.bravaisLattice

theorem crystallography_closed_from_evidence
    (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.symmorphicClosed
    (And.intro E.iucNotationClosed E.bravaisLatticeClosed)

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse