import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure OxidationKineticsPackage where
  diffusionControlledOxidation : Prop
  paralinearOxidation : Prop
  oxideScaleGrowth : Prop
  oxidationRateLaws : Prop
  temperatureDependence : Prop
  alloyOxidation : Prop

structure OxidationKineticsEvidence (O : OxidationKineticsPackage) where
  diffusionControlledOxidationClosed : O.diffusionControlledOxidation
  paralinearOxidationClosed : O.paralinearOxidation
  oxideScaleGrowthClosed : O.oxideScaleGrowth
  oxidationRateLawsClosed : O.oxidationRateLaws
  temperatureDependenceClosed : O.temperatureDependence
  alloyOxidationClosed : O.alloyOxidation

def OxidationKineticsClosed (O : OxidationKineticsPackage) : Prop :=
  O.diffusionControlledOxidation ∧ O.paralinearOxidation ∧
  O.oxideScaleGrowth ∧ O.oxidationRateLaws ∧
  O.temperatureDependence ∧ O.alloyOxidation

theorem oxidation_kinetics_closed_from_evidence (O : OxidationKineticsPackage)
    (E : OxidationKineticsEvidence O) : OxidationKineticsClosed O := by
  exact And.intro E.diffusionControlledOxidationClosed
    (And.intro E.paralinearOxidationClosed
      (And.intro E.oxideScaleGrowthClosed
        (And.intro E.oxidationRateLawsClosed
          (And.intro E.temperatureDependenceClosed E.alloyOxidationClosed))))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse
