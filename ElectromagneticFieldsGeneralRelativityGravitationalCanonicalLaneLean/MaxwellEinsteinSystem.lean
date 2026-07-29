import canonicalLaneMathlib.AdmissibleClass
import ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean.EinsteinFieldEquations

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure MaxwellEinsteinSystemPackage {P : EinsteinFieldEquationsPackage} where
  maxwellEquationsInCurvedSpacetime : Prop
  currentConservation : Prop
  lorentzForceLaw : Prop
  stressEnergyEM : Prop

structure MaxwellEinsteinSystemEvidence {P : EinsteinFieldEquationsPackage}
    (M : MaxwellEinsteinSystemPackage P) where
  maxwellEquationsInCurvedSpacetimeClosed : M.maxwellEquationsInCurvedSpacetime
  currentConservationClosed : M.currentConservation
  lorentzForceLawClosed : M.lorentzForceLaw
  stressEnergyEMClosed : M.stressEnergyEM

def MaxwellEinsteinSystemClosed {P : EinsteinFieldEquationsPackage}
    (M : MaxwellEinsteinSystemPackage P) : Prop :=
  M.maxwellEquationsInCurvedSpacetime ∧ M.currentConservation ∧
  M.lorentzForceLaw ∧ M.stressEnergyEM

theorem maxwell_einstein_system_closed_from_evidence
    {P : EinsteinFieldEquationsPackage} (M : MaxwellEinsteinSystemPackage P)
    (E : MaxwellEinsteinSystemEvidence M) : MaxwellEinsteinSystemClosed M := by
  exact And.intro E.maxwellEquationsInCurvedSpacetimeClosed
    (And.intro E.currentConservationClosed
      (And.intro E.lorentzForceLawClosed E.stressEnergyEMClosed))

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse