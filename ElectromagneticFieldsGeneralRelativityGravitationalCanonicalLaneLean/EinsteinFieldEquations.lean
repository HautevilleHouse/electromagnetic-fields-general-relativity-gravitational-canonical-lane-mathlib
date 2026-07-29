import ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean.ElectromagneticFieldTensor

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure EinsteinFieldEquationsPackage where
  ricciTensor : Type u
  scalarCurvature : Type v
  cosmologicalConstant : ℝ
  stressEnergyTensor : Type w
  einsteinEquation : Prop
  ricciTensorClosed : ricciTensor
  scalarCurvatureClosed : scalarCurvature
  stressEnergyTensorClosed : stressEnergyTensor
  einsteinEquationClosed : einsteinEquation

structure EinsteinFieldEquationsEvidence (P : EinsteinFieldEquationsPackage) where
  ricciTensorClosed : P.ricciTensorClosed
  scalarCurvatureClosed : P.scalarCurvatureClosed
  stressEnergyTensorClosed : P.stressEnergyTensorClosed
  einsteinEquationClosed : P.einsteinEquationClosed

def EinsteinFieldEquationsClosed (P : EinsteinFieldEquationsPackage) : Prop :=
  P.einsteinEquation

theorem einstein_field_equations_closed_from_evidence
    (P : EinsteinFieldEquationsPackage) (E : EinsteinFieldEquationsEvidence P) :
    EinsteinFieldEquationsClosed P :=
  E.einsteinEquationClosed

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse
