import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure WeldQualityPackage where
  porosityFormation : Prop
  hotCracking : Prop
  coldCracking : Prop
  lackOfFusion : Prop
  undercut : Prop
  spatter : Prop
  mechanicalStrength : Prop
  fatigueLife : Prop

structure WeldQualityEvidence (Q : WeldQualityPackage) where
  porosityFormationClosed : Q.porosityFormation
  hotCrackingClosed : Q.hotCracking
  coldCrackingClosed : Q.coldCracking
  lackOfFusionClosed : Q.lackOfFusion
  undercutClosed : Q.undercut
  spatterClosed : Q.spatter
  mechanicalStrengthClosed : Q.mechanicalStrength
  fatigueLifeClosed : Q.fatigueLife

def WeldQualityClosed (Q : WeldQualityPackage) : Prop :=
  Q.porosityFormation ∧ Q.hotCracking ∧ Q.coldCracking ∧ Q.lackOfFusion ∧
  Q.undercut ∧ Q.spatter ∧ Q.mechanicalStrength ∧ Q.fatigueLife

theorem weld_quality_closed_from_evidence (Q : WeldQualityPackage) (E : WeldQualityEvidence Q) : WeldQualityClosed Q := by
  exact And.intro E.porosityFormationClosed
    (And.intro E.hotCrackingClosed
      (And.intro E.coldCrackingClosed
        (And.intro E.lackOfFusionClosed
          (And.intro E.undercutClosed
            (And.intro E.spatterClosed
              (And.intro E.mechanicalStrengthClosed E.fatigueLifeClosed))))))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse