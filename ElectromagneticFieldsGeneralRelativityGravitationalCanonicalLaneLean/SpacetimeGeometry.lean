import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure LorentzianMetricPackage where
  manifold : Type u
  metric : Type v
  signature : Prop
  lorentzian : Prop
  christoffelSymbols : Prop
  riemannCurvature : Prop
  ricciCurvature : Prop
  scalarCurvature : Prop
  einsteinTensor : Prop

structure LorentzianMetricEvidence (G : LorentzianMetricPackage) where
  lorentzianClosed : G.lorentzian
  signatureClosed : G.signature
  christoffelSymbolsClosed : G.christoffelSymbols
  riemannCurvatureClosed : G.riemannCurvature
  ricciCurvatureClosed : G.ricciCurvature
  scalarCurvatureClosed : G.scalarCurvature
  einsteinTensorClosed : G.einsteinTensor

def LorentzianMetricClosed (G : LorentzianMetricPackage) : Prop :=
  G.lorentzian ∧ G.signature ∧ G.christoffelSymbols ∧ G.riemannCurvature ∧ G.ricciCurvature ∧ G.scalarCurvature ∧ G.einsteinTensor

theorem lorentzian_metric_closed_from_evidence
    (G : LorentzianMetricPackage) (E : LorentzianMetricEvidence G) :
    LorentzianMetricClosed G := by
  exact And.intro E.lorentzianClosed
    (And.intro E.signatureClosed
      (And.intro E.christoffelSymbolsClosed
        (And.intro E.riemannCurvatureClosed
          (And.intro E.ricciCurvatureClosed
            (And.intro E.scalarCurvatureClosed E.einsteinTensorClosed)))))

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse