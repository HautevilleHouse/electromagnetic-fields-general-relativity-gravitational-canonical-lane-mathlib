import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure KerrNewmanMetricPackage where
  spacetimeManifold : Type u
  metric : Type v
  electromagneticPotential : Type w
  massChargeAngularMomentum : Prop
  eventHorizon : Prop
  singularities : Prop

structure KerrNewmanMetricEvidence (K : KerrNewmanMetricPackage) where
  massChargeAngularMomentumClosed : K.massChargeAngularMomentum
  eventHorizonClosed : K.eventHorizon
  singularitiesClosed : K.singularities

def KerrNewmanMetricClosed (K : KerrNewmanMetricPackage) : Prop :=
  K.massChargeAngularMomentum ∧ K.eventHorizon ∧ K.singularities

theorem kerr_newman_metric_closed_from_evidence (K : KerrNewmanMetricPackage) (ev : KerrNewmanMetricEvidence K) : KerrNewmanMetricClosed K := by
  exact And.intro ev.massChargeAngularMomentumClosed (And.intro ev.eventHorizonClosed ev.singularitiesClosed)

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse