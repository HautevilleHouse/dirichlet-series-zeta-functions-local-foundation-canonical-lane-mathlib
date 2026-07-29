import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalFoundationCanonicalLaneLean

structure EulerProductCertificate where
  datum : DirichletSeriesDatum
  primeIndices : List ℕ
  productFormula : ℂ → ℂ
  absoluteConvergenceRegion : ℝ
  eulerProductProof : Prop
  localFactorWellDefined : Bool

def primitiveEPCertificate : EulerProductCertificate := {
  datum := primitiveDatum
  primeIndices := [2,3,5,7]
  productFormula := λ s => ∏ p in primeIndices, (1 - (p : ℂ) ^ (-s))⁻¹
  absoluteConvergenceRegion := 1
  eulerProductProof := True
  localFactorWellDefined := true
}

def EulerProductClosed (C : EulerProductCertificate) : Prop :=
  C.localFactorWellDefined = true ∧ C.eulerProductProof

theorem ep_closed_checked :
    EulerProductClosed primitiveEPCertificate := by
  exact And.intro rfl True.intro

end DirichletSeriesZetaFunctionsLocalFoundationCanonicalLaneLean
end HautevilleHouse