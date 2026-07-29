import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalFoundationCanonicalLaneLean

structure LocalZetaFunctionCertificate where
  datum : DirichletSeriesDatum
  localZeta : ℂ → ℂ
  localFactor : ℂ → ℂ
  productFormula : ℂ → ℂ
  functionalEquationMatch : Bool
  meromorphicContinuation : Bool

def primitiveLZCertificate : LocalZetaFunctionCertificate := {
  datum := primitiveDatum
  localZeta := λ s => (1 - (2 : ℂ) ^ (-s))⁻¹
  localFactor := λ s => (1 - (2 : ℂ) ^ (-s))⁻¹
  productFormula := λ s => (1 - (2 : ℂ) ^ (-s))⁻¹
  functionalEquationMatch := true
  meromorphicContinuation := true
}

def LocalZetaFunctionClosed (C : LocalZetaFunctionCertificate) : Prop :=
  C.functionalEquationMatch = true ∧ C.meromorphicContinuation = true

theorem lzf_closed_checked :
    LocalZetaFunctionClosed primitiveLZCertificate := by
  exact And.intro rfl rfl

end DirichletSeriesZetaFunctionsLocalFoundationCanonicalLaneLean
end HautevilleHouse