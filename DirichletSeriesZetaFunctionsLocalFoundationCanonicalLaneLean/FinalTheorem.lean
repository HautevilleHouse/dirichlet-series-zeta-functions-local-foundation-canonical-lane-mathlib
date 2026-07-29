import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirichletSeriesZetaFunctionsLocalFoundationCanonicalLaneLean.LFunctionLayer

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded ∨ A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact Or.inl A.remainderRecorded

def ConstrainedDirichletClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dirichlet_endgame (A : AdmissibleClass) :
    ConstrainedDirichletClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirichletSeriesZetaFunctionsLocalFoundationCanonicalLaneLean
end HautevilleHouse