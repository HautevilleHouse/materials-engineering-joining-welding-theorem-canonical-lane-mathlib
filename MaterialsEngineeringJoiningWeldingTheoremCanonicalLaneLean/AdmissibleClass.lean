import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean

structure JoiningWeldObject where
  weldCarrier : Type
  weldCondition : Prop

structure AdmissibleClass where
  object : JoiningWeldObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (∀ (x : A.object.weldCarrier), A.object.weldCondition) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringJoiningWeldingTheoremCanonicalLaneLean
end HautevilleHouse