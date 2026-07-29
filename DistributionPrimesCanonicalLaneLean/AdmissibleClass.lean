import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionPrimesCanonicalLaneLean

structure DistributionPrimeAdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : DistributionPrimeAdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DistributionPrimesCanonicalLaneLean
end HautevilleHouse