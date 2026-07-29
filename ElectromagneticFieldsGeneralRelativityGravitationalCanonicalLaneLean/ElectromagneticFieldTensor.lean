import ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean.StressEnergyTensor

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure ElectromagneticFieldTensorPackage where
  faradayTensor : Type u
  hodgeDual : Type v
  maxwellEquations : Prop
  lorentzForce : Prop
  faradayTensorClosed : faradayTensor
  hodgeDualClosed : hodgeDual
  maxwellEquationsClosed : maxwellEquations
  lorentzForceClosed : lorentzForce

structure ElectromagneticFieldTensorEvidence (P : ElectromagneticFieldTensorPackage) where
  faradayTensorClosed : P.faradayTensorClosed
  hodgeDualClosed : P.hodgeDualClosed
  maxwellEquationsClosed : P.maxwellEquationsClosed
  lorentzForceClosed : P.lorentzForceClosed

def ElectromagneticFieldTensorClosed (P : ElectromagneticFieldTensorPackage) : Prop :=
  P.maxwellEquations ∧ P.lorentzForce

theorem electromagnetic_field_tensor_closed_from_evidence
    (P : ElectromagneticFieldTensorPackage) (E : ElectromagneticFieldTensorEvidence P) :
    ElectromagneticFieldTensorClosed P :=
  And.intro E.maxwellEquationsClosed E.lorentzForceClosed

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse
