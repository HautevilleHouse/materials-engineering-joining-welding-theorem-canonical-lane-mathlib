import MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean.HeatAffectedZone

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure WeldSolidificationPackage {A : AdmissibleClass} (H : HeatAffectedZonePackage A) where
  solidificationFront : Prop
  dendriticGrowth : Prop
  segregationProfile : Prop
  shrinkagePorosity : Prop

structure WeldSolidificationEvidence {A : AdmissibleClass}
    {H : HeatAffectedZonePackage A} (S : WeldSolidificationPackage H) where
  solidificationFrontClosed : S.solidificationFront
  dendriticGrowthClosed : S.dendriticGrowth
  segregationProfileClosed : S.segregationProfile
  shrinkagePorosityClosed : S.shrinkagePorosity

def WeldSolidificationClosed {A : AdmissibleClass}
    {H : HeatAffectedZonePackage A} (S : WeldSolidificationPackage H) : Prop :=
  S.solidificationFront ∧ S.dendriticGrowth ∧ S.segregationProfile ∧ S.shrinkagePorosity

theorem weld_solidification_closed_from_evidence
    {A : AdmissibleClass} {H : HeatAffectedZonePackage A}
    (S : WeldSolidificationPackage H) (E : WeldSolidificationEvidence S) :
    WeldSolidificationClosed S := by
  exact And.intro E.solidificationFrontClosed
    (And.intro E.dendriticGrowthClosed
      (And.intro E.segregationProfileClosed E.shrinkagePorosityClosed))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse