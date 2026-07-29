import .EinsteinFieldEquations

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure SchwarzschildSolutionPackage where
  mass : Float
  eventHorizonRadius : Float
  metricComponent : Float → Float
  singularityAtR0 : Prop
  asymptoticFlatness : Prop

structure SchwarzschildSolutionEvidence (S : SchwarzschildSolutionPackage) where
  singularityAtR0Closed : S.singularityAtR0
  asymptoticFlatnessClosed : S.asymptoticFlatness

def SchwarzschildSolutionClosed (S : SchwarzschildSolutionPackage) : Prop :=
  S.singularityAtR0 ∧ S.asymptoticFlatness

theorem schwarzschild_solution_closed_from_evidence (S : SchwarzschildSolutionPackage)
    (E : SchwarzschildSolutionEvidence S) : SchwarzschildSolutionClosed S := by
  exact And.intro E.singularityAtR0Closed E.asymptoticFlatnessClosed

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse