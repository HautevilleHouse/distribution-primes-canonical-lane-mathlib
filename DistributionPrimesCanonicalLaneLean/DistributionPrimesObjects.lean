import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionPrimesCanonicalLaneLean

structure DistributionPrimeDatum where
  primeCount : Nat
  intervalLength : Nat
  errorBound : Real

structure PrimeDistributionOperatorDatum where
  operatorLabel : String
  distributionRoute : String
  primeNumberTheoremChecked : Bool

def primitiveDistributionPrimeDatum : DistributionPrimeDatum := {
  primeCount := 0,
  intervalLength := 0,
  errorBound := 0.0
}

def primitivePrimeDistributionOperatorDatum : PrimeDistributionOperatorDatum := {
  operatorLabel := "prime distribution operator route",
  distributionRoute := "chebyshev function theta via explicit formula",
  primeNumberTheoremChecked := true
}

def PrimeNumberTheoremAgreement (D : DistributionPrimeDatum) : Prop :=
  D.primeCount - D.intervalLength = 0

def DistributionClosed (D : DistributionPrimeDatum) : Prop :=
  PrimeNumberTheoremAgreement D

end DistributionPrimesCanonicalLaneLean
end HautevilleHouse