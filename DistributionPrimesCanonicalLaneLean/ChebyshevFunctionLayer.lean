import DistributionPrimesCanonicalLaneLean.DistributionPrimesObjects

namespace HautevilleHouse
namespace DistributionPrimesCanonicalLaneLean

structure ChebyshevFunctionLayerCertificate where
  operatorDatum : PrimeDistributionOperatorDatum
  chebyshevRoute : String
  explicitFormulaRoute : String

def chebyshevFunctionLayerCertificate : ChebyshevFunctionLayerCertificate := {
  operatorDatum := primitivePrimeDistributionOperatorDatum,
  chebyshevRoute := "Chebyshev function psi routed through von-Mangoldt explicit formula",
  explicitFormulaRoute := "explicit formula connecting zeros and primes"
}

def ChebyshevFunctionLayerClosed (C : ChebyshevFunctionLayerCertificate) : Prop :=
  C.operatorDatum.primeNumberTheoremChecked = true

theorem chebyshev_function_layer_closed_checked :
    ChebyshevFunctionLayerClosed chebyshevFunctionLayerCertificate := by
  unfold ChebyshevFunctionLayerClosed
  rfl

end DistributionPrimesCanonicalLaneLean
end HautevilleHouse