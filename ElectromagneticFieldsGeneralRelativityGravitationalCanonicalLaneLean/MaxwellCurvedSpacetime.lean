import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure MaxwellCurvedSpacetimePackage where
  spacetimeManifold : Type u
  metric : Type v
  electromagneticTensor : Type w
  maxwellEquations : Prop
  stressEnergyTensor : Prop
  compatibilityWithMetric : Prop

structure MaxwellCurvedSpacetimeEvidence (M : MaxwellCurvedSpacetimePackage) where
  maxwellEquationsClosed : M.maxwellEquations
  stressEnergyTensorClosed : M.stressEnergyTensor
  compatibilityWithMetricClosed : M.compatibilityWithMetric

def MaxwellCurvedSpacetimeClosed (M : MaxwellCurvedSpacetimePackage) : Prop :=
  M.maxwellEquations ∧ M.stressEnergyTensor ∧ M.compatibilityWithMetric

theorem maxwell_curved_spacetime_closed_from_evidence
    (M : MaxwellCurvedSpacetimePackage) (E : MaxwellCurvedSpacetimeEvidence M) :
    MaxwellCurvedSpacetimeClosed M := by
  exact And.intro E.maxwellEquationsClosed
    (And.intro E.stressEnergyTensorClosed E.compatibilityWithMetricClosed)

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse