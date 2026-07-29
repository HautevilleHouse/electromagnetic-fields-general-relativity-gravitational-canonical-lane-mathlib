import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure GravitationalWavePackage where
  backgroundSpacetime : Type u
  perturbationMetric : Type v
  linearizedEinsteinEquations : Prop
  waveEquation : Prop
  gaugeCondition : Prop

structure GravitationalWaveEvidence (G : GravitationalWavePackage) where
  linearizedEinsteinEquationsClosed : G.linearizedEinsteinEquations
  waveEquationClosed : G.waveEquation
  gaugeConditionClosed : G.gaugeCondition

def GravitationalWaveClosed (G : GravitationalWavePackage) : Prop :=
  G.linearizedEinsteinEquations ∧ G.waveEquation ∧ G.gaugeCondition

theorem gravitational_wave_closed_from_evidence
    (G : GravitationalWavePackage) (E : GravitationalWaveEvidence G) :
    GravitationalWaveClosed G := by
  exact And.intro E.linearizedEinsteinEquationsClosed
    (And.intro E.waveEquationClosed E.gaugeConditionClosed)

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse