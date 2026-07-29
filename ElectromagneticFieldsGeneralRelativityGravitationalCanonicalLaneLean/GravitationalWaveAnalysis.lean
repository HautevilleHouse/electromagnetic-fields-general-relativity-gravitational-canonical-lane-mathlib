import canonicalLaneMathlib.AdmissibleClass
import ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean.MaxwellEinsteinSystem

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure GravitationalWaveAnalysisPackage {P : EinsteinFieldEquationsPackage}
    {M : MaxwellEinsteinSystemPackage P} where
  linearizedPerturbation : Prop
  waveEquationForMetricPerturbation : Prop
  polarizationTensors : Prop
  energyFlux : Prop

structure GravitationalWaveAnalysisEvidence {P : EinsteinFieldEquationsPackage}
    {M : MaxwellEinsteinSystemPackage P} (G : GravitationalWaveAnalysisPackage M) where
  linearizedPerturbationClosed : G.linearizedPerturbation
  waveEquationForMetricPerturbationClosed : G.waveEquationForMetricPerturbation
  polarizationTensorsClosed : G.polarizationTensors
  energyFluxClosed : G.energyFlux

def GravitationalWaveAnalysisClosed {P : EinsteinFieldEquationsPackage}
    {M : MaxwellEinsteinSystemPackage P} (G : GravitationalWaveAnalysisPackage M) : Prop :=
  G.linearizedPerturbation ∧ G.waveEquationForMetricPerturbation ∧
  G.polarizationTensors ∧ G.energyFlux

theorem gravitational_wave_analysis_closed_from_evidence
    {P : EinsteinFieldEquationsPackage} {M : MaxwellEinsteinSystemPackage P}
    (G : GravitationalWaveAnalysisPackage M) (E : GravitationalWaveAnalysisEvidence G) :
    GravitationalWaveAnalysisClosed G := by
  exact And.intro E.linearizedPerturbationClosed
    (And.intro E.waveEquationForMetricPerturbationClosed
      (And.intro E.polarizationTensorsClosed E.energyFluxClosed))

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse