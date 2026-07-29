import HautevilleHouse.DirichletSeriesZetaFunctionsLocalFoundation.DirichletGateLemmas

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalFoundation

def ConstrainedDirichletClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

local notation "DirichletAdmissibleClosure" => ConstrainedDirichletClosure

theorem constrained_dirichlet_endgame (A : AdmissibleClass) :
    ConstrainedDirichletClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

theorem dirichlet_closure_carriage_state_checked (A : AdmissibleClass) :
    ConstrainedDirichletClosure A := by
  exact constrained_dirichlet_endgame A

end DirichletSeriesZetaFunctionsLocalFoundation
end HautevilleHouse