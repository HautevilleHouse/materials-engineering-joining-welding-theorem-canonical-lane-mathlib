import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure JoiningMetallurgyPackage where
  solidificationMode : Prop
  dendriticGrowth : Prop
  segregation : Prop
  phaseTransformationInHAZ : Prop
  grainGrowth : Prop
  precipitation : Prop
  residualStress : Prop
  distortion : Prop

structure JoiningMetallurgyEvidence (J : JoiningMetallurgyPackage) where
  solidificationModeClosed : J.solidificationMode
  dendriticGrowthClosed : J.dendriticGrowth
  segregationClosed : J.segregation
  phaseTransformationInHAZClosed : J.phaseTransformationInHAZ
  grainGrowthClosed : J.grainGrowth
  precipitationClosed : J.precipitation
  residualStressClosed : J.residualStress
  distortionClosed : J.distortion

def JoiningMetallurgyClosed (J : JoiningMetallurgyPackage) : Prop :=
  J.solidificationMode ∧ J.dendriticGrowth ∧ J.segregation ∧ J.phaseTransformationInHAZ ∧
  J.grainGrowth ∧ J.precipitation ∧ J.residualStress ∧ J.distortion

theorem joining_metallurgy_closed_from_evidence (J : JoiningMetallurgyPackage) (E : JoiningMetallurgyEvidence J) : JoiningMetallurgyClosed J := by
  exact And.intro E.solidificationModeClosed
    (And.intro E.dendriticGrowthClosed
      (And.intro E.segregationClosed
        (And.intro E.phaseTransformationInHAZClosed
          (And.intro E.grainGrowthClosed
            (And.intro E.precipitationClosed
              (And.intro E.residualStressClosed E.distortionClosed))))))

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse