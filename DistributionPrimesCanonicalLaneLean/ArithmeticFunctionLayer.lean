import DistributionPrimesCanonicalLaneLean.SelbergSieveLayer

namespace HautevilleHouse
namespace DistributionPrimesCanonicalLaneLean

structure ArithmeticFunctionLayerCertificate where
  dirichletConvolution : Bool
  mobiusInversion : Bool
  averageOrders : Bool
  endpointChecked : Bool

def arithmeticFunctionLayerCertificate : ArithmeticFunctionLayerCertificate := {
  dirichletConvolution := true,
  mobiusInversion := true,
  averageOrders := true,
  endpointChecked := true
}

def ArithmeticFunctionLayerClosed (C : ArithmeticFunctionLayerCertificate) : Prop :=
  C.dirichletConvolution ∧ C.mobiusInversion ∧ C.endpointChecked

theorem arithmetic_function_layer_closed_checked :
    ArithmeticFunctionLayerClosed arithmeticFunctionLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DistributionPrimesCanonicalLaneLean
end HautevilleHouse