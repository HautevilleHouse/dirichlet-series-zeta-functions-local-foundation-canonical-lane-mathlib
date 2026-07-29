import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalFoundation

structure DirichletSeriesDatum where
  seriesKey : String
  convergenceAbscissa : Float
  sumFunctionDefined : Bool
  eulerProductDefined : Bool
  analyticContinuationKnown : Bool
  functionalEquationKnown : Bool

def primitiveDirichletSeriesDatum : DirichletSeriesDatum := {
  seriesKey := "L(s,χ) for primitive Dirichlet character",
  convergenceAbscissa := 1.0,
  sumFunctionDefined := true,
  eulerProductDefined := true,
  analyticContinuationKnown := true,
  functionalEquationKnown := true
}

structure DirichletClassicalBase where
  series : DirichletSeriesDatum
  baseKey : String
  baseChecked : Prop

def dirichletClassicalBase : DirichletClassicalBase := {
  series := primitiveDirichletSeriesDatum,
  baseKey := "Dirichlet L-function classical base",
  baseChecked := True
}

end DirichletSeriesZetaFunctionsLocalFoundation
end HautevilleHouse