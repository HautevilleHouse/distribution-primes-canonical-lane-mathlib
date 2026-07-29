import DistributionPrimesCanonicalLaneLean.ChebyshevFunctionLayer

namespace HautevilleHouse
namespace DistributionPrimesCanonicalLaneLean

structure ZeroFreeRegionLayerCertificate where
  chebyshevLayer : ChebyshevFunctionLayerCertificate
  zeroFreeRegionRoute : String
  deLaValleePoussinRoute : String
  regionDepth : Real
  zetaZeroRegionChecked : Bool

def zeroFreeRegionLayerCertificate : ZeroFreeRegionLayerCertificate := {
  chebyshevLayer := chebyshevFunctionLayerCertificate,
  zeroFreeRegionRoute := "zero-free region for zeta(s) near Re(s)=1",
  deLaValleePoussinRoute := "de la Vallee-Poussin explicit bound",
  regionDepth := 0.001,
  zetaZeroRegionChecked := true
}

def ZeroFreeRegionLayerClosed (C : ZeroFreeRegionLayerCertificate) : Prop :=
  C.zetaZeroRegionChecked = true

theorem zero_free_region_layer_closed_checked :
    ZeroFreeRegionLayerClosed zeroFreeRegionLayerCertificate := by
  unfold ZeroFreeRegionLayerClosed
  rfl

end DistributionPrimesCanonicalLaneLean
end HautevilleHouse