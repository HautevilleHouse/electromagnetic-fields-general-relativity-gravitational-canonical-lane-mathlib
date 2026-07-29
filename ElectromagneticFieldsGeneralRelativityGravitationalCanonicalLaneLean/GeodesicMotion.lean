import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure GeodesicMotionPackage where
  spacetimeManifold : Type u
  metric : Type v
  faradayTensor : Type w
  chargedParticleTrajectory : Type x
  lorentzForceLaw : Prop
  geodesicEquation : Prop

structure GeodesicMotionEvidence (G : GeodesicMotionPackage) where
  lorentzForceLawClosed : G.lorentzForceLaw
  geodesicEquationClosed : G.geodesicEquation

def GeodesicMotionClosed (G : GeodesicMotionPackage) : Prop :=
  G.lorentzForceLaw ∧ G.geodesicEquation

theorem geodesic_motion_closed_from_evidence (G : GeodesicMotionPackage) (ev : GeodesicMotionEvidence G) : GeodesicMotionClosed G := by
  exact And.intro ev.lorentzForceLawClosed ev.geodesicEquationClosed

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse