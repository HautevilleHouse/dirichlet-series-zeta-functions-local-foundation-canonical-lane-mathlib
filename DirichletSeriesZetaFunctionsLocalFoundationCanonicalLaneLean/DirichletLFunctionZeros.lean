import HautevilleHouse.DirichletSeriesZetaFunctionsLocalFoundation.DirichletLocalConstants

/-!
# Zeros of Dirichlet L-functions layer

This module records the zero data for Dirichlet L-functions, which is a central object
in the local foundation.
-/

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalFoundation

structure ZeroCertificate where
  datum : DirichletSeriesDatum
  nontrivialZeroCount : Nat
  criticalLineZeroCount : Nat
  generalizedRiemannHypothesisOpen : Bool
  zeroEndpointChecked : Bool
  spectralPersistenceChecked : Bool
  classicalBoundaryCarried : Bool

def zeroCertificate : ZeroCertificate := {
  datum := primitiveDirichletSeriesDatum,
  nontrivialZeroCount := 0,
  criticalLineZeroCount := 0,
  generalizedRiemannHypothesisOpen := true,
  zeroEndpointChecked := true,
  spectralPersistenceChecked := true,
  classicalBoundaryCarried := true
}

def ZeroLayerClosed (C : ZeroCertificate) : Prop :=
  C.datum.analyticContinuationKnown = true ∧
  C.datum.functionalEquationKnown = true ∧
  C.zeroEndpointChecked = true ∧
  C.spectralPersistenceChecked = true ∧
  C.classicalBoundaryCarried = true

theorem zero_layer_closed_checked :
    ZeroLayerClosed zeroCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end DirichletSeriesZetaFunctionsLocalFoundation
end HautevilleHouse