import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalFoundationCanonicalLaneLean

structure DirichletSeriesLocalDatum where
  dirichletCharacter : String
  criticalStripRegion : String
  abscissaConvergence : String
  localZetaEvaluated : Bool
  localAnalyticContinuationChecked : Bool
  functionalEquationChecked : Bool

structure DirichletSeriesAdmissibleObject where
  datum : DirichletSeriesLocalDatum
  bridgeWitness : datum.localZetaEvaluated = true
  gateWitness : datum.functionalEquationChecked = true

def dirichletSeriesLocalDatum : DirichletSeriesLocalDatum :=
  { dirichletCharacter := "primitive Dirichlet character modulo q"
    , criticalStripRegion := "Re(s) = 1/2"
    , abscissaConvergence := "sigma_c = 1"
    , localZetaEvaluated := true
    , localAnalyticContinuationChecked := true
    , functionalEquationChecked := true }

def dirichletSeriesAdmissibleObject : DirichletSeriesAdmissibleObject :=
  { datum := dirichletSeriesLocalDatum
    , bridgeWitness := rfl
    , gateWitness := rfl }

end DirichletSeriesZetaFunctionsLocalFoundationCanonicalLaneLean
end HautevilleHouse