import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure AdhesiveBondingPackage where
  surfacePreparation : Type u
  adhesiveProperties : Type v
  bondStrength : Prop
  environmentalDegradation : Prop
  creepRupture : Prop

structure AdhesiveBondingEvidence (A : AdhesiveBondingPackage) where
  bondStrengthClosed : A.bondStrength
  environmentalDegradationClosed : A.environmentalDegradation
  creepRuptureClosed : A.creepRupture

def AdhesiveBondingClosed (A : AdhesiveBondingPackage) : Prop :=
  A.bondStrength ∧ A.environmentalDegradation ∧ A.creepRupture

theorem adhesive_bonding_closed_from_evidence (A : AdhesiveBondingPackage)
    (E : AdhesiveBondingEvidence A) : AdhesiveBondingClosed A := by
  exact And.intro E.bondStrengthClosed
    (And.intro E.environmentalDegradationClosed E.creepRuptureClosed)

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse