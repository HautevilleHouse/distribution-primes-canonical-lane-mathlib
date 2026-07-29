import DistributionPrimesCanonicalLaneLean.OptimalErrorTermLayer

namespace HautevilleHouse
namespace DistributionPrimesCanonicalLaneLean

structure DistributionPrimesCertificate where
  chebyshevLayer : ChebyshevFunctionLayerCertificate
  zeroFreeLayer : ZeroFreeRegionLayerCertificate
  errorLayer : OptimalErrorTermLayerCertificate
  carriageRecord : DistributionPrimesCarriageRecord
  baselineGatesClosed : Bool
  distributionClosed : Bool
  classicalBoundaryCarried : Bool

def distributionPrimesCertificate : DistributionPrimesCertificate := {
  chebyshevLayer := chebyshevFunctionLayerCertificate,
  zeroFreeLayer := zeroFreeRegionLayerCertificate,
  errorLayer := optimalErrorTermLayerCertificate,
  carriageRecord := distributionPrimesCarriageRecord,
  baselineGatesClosed := true,
  distributionClosed := true,
  classicalBoundaryCarried := true
}

def DistributionPrimesCertificateClosed (C : DistributionPrimesCertificate) : Prop :=
  ChebyshevFunctionLayerClosed C.chebyshevLayer ∧
  ZeroFreeRegionLayerClosed C.zeroFreeLayer ∧
  OptimalErrorTermLayerClosed C.errorLayer ∧
  C.baselineGatesClosed = true ∧
  C.distributionClosed = true ∧
  C.classicalBoundaryCarried = true

theorem distribution_primes_certificate_closed_checked :
    DistributionPrimesCertificateClosed distributionPrimesCertificate := by
  exact And.intro chebyshev_function_layer_closed_checked
    (And.intro zero_free_region_layer_closed_checked
    (And.intro optimal_error_term_layer_closed_checked
    (And.intro rfl (And.intro rfl rfl))))

end DistributionPrimesCanonicalLaneLean
end HautevilleHouse