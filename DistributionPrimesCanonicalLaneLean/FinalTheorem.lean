import DistributionPrimesCanonicalLaneLean.ArithmeticFunctionLayer

namespace HautevilleHouse
namespace DistributionPrimesCanonicalLaneLean

def ConstrainedDistributionPrimesClosure (A : DistributionPrimeAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distribution_primes_endgame (A : DistributionPrimeAdmissibleClass) :
    ConstrainedDistributionPrimesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionPrimesCanonicalLaneLean
end HautevilleHouse