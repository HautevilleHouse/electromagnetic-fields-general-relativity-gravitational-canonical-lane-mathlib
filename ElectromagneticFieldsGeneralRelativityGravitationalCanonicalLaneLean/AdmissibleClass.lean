import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure ElectromagneticGravitationalObject where
  spacetime : Type u
  metric : spacetime → spacetime → ℝ
  faradayTensor : spacetime → spacetime → ℝ
  ricciTensor : spacetime → spacetime → ℝ
  stressEnergyTensor : spacetime → spacetime → ℝ
  einsteinEquationsHolding : Prop
  maxwellEquationsHolding : Prop
  conclusion : einsteinEquationsHolding ∧ maxwellEquationsHolding

structure AdmissibleClass where
  object : ElectromagneticGravitationalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.einsteinEquationsHolding ∧ A.object.maxwellEquationsHolding) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse
