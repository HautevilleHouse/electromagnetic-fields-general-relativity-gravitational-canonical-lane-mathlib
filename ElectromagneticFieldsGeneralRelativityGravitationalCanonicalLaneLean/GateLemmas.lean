import ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse
