import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure OxideScalingPackage where
  parabolicScaleLaw : Prop
  linearBreakaway : Prop
  transitionTemperature : Prop
  stressInducedSpallation : Prop

structure OxideScalingEvidence (O : OxideScalingPackage) where
  parabolicScaleLawClosed : O.parabolicScaleLaw
  linearBreakawayClosed : O.linearBreakaway
  transitionTemperatureClosed : O.transitionTemperature
  stressInducedSpallationClosed : O.stressInducedSpallation

def OxideScalingClosed (O : OxideScalingPackage) : Prop :=
  O.parabolicScaleLaw ∧ O.linearBreakaway ∧ O.transitionTemperature ∧ O.stressInducedSpallation

theorem oxide_scaling_closed_from_evidence (O : OxideScalingPackage) (E : OxideScalingEvidence O) :
    OxideScalingClosed O := by
  exact And.intro E.parabolicScaleLawClosed
    (And.intro E.linearBreakawayClosed
      (And.intro E.transitionTemperatureClosed E.stressInducedSpallationClosed))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse