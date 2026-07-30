import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure OxideGrowthKineticsPackage where
  parabolicRateConstant : Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  scaleLaw : Prop

structure OxideGrowthKineticsEvidence (K : OxideGrowthKineticsPackage) where
  parabolicRateConstantClosed : K.parabolicRateConstant
  activationEnergyClosed : K.activationEnergy
  temperatureDependenceClosed : K.temperatureDependence
  scaleLawClosed : K.scaleLaw

def OxideGrowthKineticsClosed (K : OxideGrowthKineticsPackage) : Prop :=
  K.parabolicRateConstant ∧ K.activationEnergy ∧ K.temperatureDependence ∧ K.scaleLaw

theorem oxide_growth_kinetics_closed_from_evidence (K : OxideGrowthKineticsPackage)
    (E : OxideGrowthKineticsEvidence K) : OxideGrowthKineticsClosed K := by
  exact And.intro E.parabolicRateConstantClosed
    (And.intro E.activationEnergyClosed (And.intro E.temperatureDependenceClosed E.scaleLawClosed))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse