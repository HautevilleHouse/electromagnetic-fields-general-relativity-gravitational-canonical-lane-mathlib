import ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.einsteinEquationsHolding ∧ A.object.maxwellEquationsHolding

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse
