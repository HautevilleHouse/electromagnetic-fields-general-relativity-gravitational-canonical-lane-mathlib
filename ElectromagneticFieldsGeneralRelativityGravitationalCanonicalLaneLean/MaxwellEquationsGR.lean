import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure MaxwellEquationsGRPackage where
  spacetimeManifold : Type u
  metric : Type v
  faradayTensor : Type w
  sourceCurrent : Type x
  gaussLawForElectric : Prop
  gaussLawForMagnetic : Prop
  faradayInduction : Prop
  ampereMaxwellLaw : Prop

structure MaxwellEquationsGREvidence (M : MaxwellEquationsGRPackage) where
  gaussLawForElectricClosed : M.gaussLawForElectric
  gaussLawForMagneticClosed : M.gaussLawForMagnetic
  faradayInductionClosed : M.faradayInduction
  ampereMaxwellLawClosed : M.ampereMaxwellLaw

def MaxwellEquationsGRClosed (M : MaxwellEquationsGRPackage) : Prop :=
  M.gaussLawForElectric ∧ M.gaussLawForMagnetic ∧ M.faradayInduction ∧ M.ampereMaxwellLaw

theorem maxwell_equations_gr_closed_from_evidence (M : MaxwellEquationsGRPackage) (ev : MaxwellEquationsGREvidence M) : MaxwellEquationsGRClosed M := by
  exact And.intro ev.gaussLawForElectricClosed (And.intro ev.gaussLawForMagneticClosed (And.intro ev.faradayInductionClosed ev.ampereMaxwellLawClosed))

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse