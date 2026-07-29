import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean.AbstractSpaces

namespace HautevilleHouse
namespace LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean

structure SpectralProperties (X : AbstractSpace) (L : LinearDifferentialOperator X) where
  spectrum : Set ℂ
  resolventSet : Set ℂ
  spectrumCompact : IsCompact spectrum
  resolventOpen : IsOpen resolventSet

theorem spectrum_nonempty (X : AbstractSpace) (L : LinearDifferentialOperator X) (h : SpectralProperties X L) : h.spectrum.Nonempty := by
  sorry

end LinearDifferentialEquationsAbstractSpacesTheoremCanonicalLaneLean
end HautevilleHouse