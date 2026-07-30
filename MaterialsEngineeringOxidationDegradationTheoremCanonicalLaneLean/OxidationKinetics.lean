import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure OxidationKineticsPackage where
  parabolicRateConstant : Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  scaleLawConformation : Prop

structure OxidationKineticsEvidence (O : OxidationKineticsPackage) where
  parabolicRateConstantClosed : O.parabolicRateConstant
  activationEnergyClosed : O.activationEnergy
  temperatureDependenceClosed : O.temperatureDependence
  scaleLawConformationClosed : O.scaleLawConformation

def OxidationKineticsClosed (O : OxidationKineticsPackage) : Prop :=
  O.parabolicRateConstant ∧ O.activationEnergy ∧ O.temperatureDependence ∧ O.scaleLawConformation

theorem oxidation_kinetics_closed_from_evidence (O : OxidationKineticsPackage) (E : OxidationKineticsEvidence O) :
    OxidationKineticsClosed O := by
  exact And.intro E.parabolicRateConstantClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.temperatureDependenceClosed E.scaleLawConformationClosed))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse