import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalFoundationCanonicalLaneLean

def ConstrainedDirichletClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dirichlet_closure (A : AdmissibleClass) :
    ConstrainedDirichletClosure A := by
  exact And.intro (bridge_from_admissible_class A) (Or.inl A.endpointSatisfied)

theorem dirichlet_series_foundation_closure_checked (A : AdmissibleClass) :
    ConstrainedDirichletClosure A := by
  exact constrained_dirichlet_closure A

end DirichletSeriesZetaFunctionsLocalFoundationCanonicalLaneLean
end HautevilleHouse