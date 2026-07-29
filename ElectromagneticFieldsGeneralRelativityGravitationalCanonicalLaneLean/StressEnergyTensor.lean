import ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure StressEnergyTensorPackage where
  tensorField : Type u
  conservativity : Prop
  positivityCondition : Prop
  tensorFieldClosed : tensorField
  conservativityClosed : conservativity
  positivityConditionClosed : positivityCondition

structure StressEnergyTensorEvidence (P : StressEnergyTensorPackage) where
  tensorFieldClosed : P.tensorFieldClosed
  conservativityClosed : P.conservativityClosed
  positivityConditionClosed : P.positivityConditionClosed

def StressEnergyTensorClosed (P : StressEnergyTensorPackage) : Prop :=
  P.conservativity ∧ P.positivityCondition

theorem stress_energy_tensor_closed_from_evidence
    (P : StressEnergyTensorPackage) (E : StressEnergyTensorEvidence P) :
    StressEnergyTensorClosed P :=
  And.intro E.conservativityClosed E.positivityConditionClosed

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse
