import .AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean

structure MaxwellEquationsPackage where
  faradayTensor : Type
  maxwellSource : Type
  dF_eq_zero : Prop
  d_star_F_eq_J : Prop
  electroVacuumCondition : Prop

structure MaxwellEquationsEvidence (M : MaxwellEquationsPackage) where
  dF_eq_zero_closed : M.dF_eq_zero
  d_star_F_eq_J_closed : M.d_star_F_eq_J
  electroVacuumConditionClosed : M.electroVacuumCondition

def MaxwellEquationsClosed (M : MaxwellEquationsPackage) : Prop :=
  M.dF_eq_zero ∧ M.d_star_F_eq_J ∧ M.electroVacuumCondition

theorem maxwell_equations_closed_from_evidence (M : MaxwellEquationsPackage)
    (E : MaxwellEquationsEvidence M) : MaxwellEquationsClosed M := by
  exact And.intro E.dF_eq_zero_closed (And.intro E.d_star_F_eq_J_closed E.electroVacuumConditionClosed)

end ElectromagneticFieldsGeneralRelativityGravitationalCanonicalLaneLean
end HautevilleHouse