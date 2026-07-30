import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure OxideScalePackage where
  oxideThickness : ℝ
  diffusionCoefficient : ℝ
  reactionRate : ℝ
  initialOxygenConcentration : ℝ
  temperature : ℝ

structure OxideScaleEvidence (O : OxideScalePackage) where
  thicknessPositive : O.oxideThickness > 0
  diffusionPositive : O.diffusionCoefficient > 0
  reactionRatePositive : O.reactionRate > 0
  initialConcentrationNonneg : O.initialOxygenConcentration ≥ 0
  temperatureNonneg : O.temperature ≥ 0

def OxideScaleClosed (O : OxideScalePackage) : Prop :=
  O.oxideThickness > 0 ∧ O.diffusionCoefficient > 0 ∧ O.reactionRate > 0 ∧
  O.initialOxygenConcentration ≥ 0 ∧ O.temperature ≥ 0

theorem oxide_scale_closed_from_evidence (O : OxideScalePackage) (E : OxideScaleEvidence O) :
    OxideScaleClosed O := by
  exact And.intro E.thicknessPositive
    (And.intro E.diffusionPositive
      (And.intro E.reactionRatePositive
        (And.intro E.initialConcentrationNonneg E.temperatureNonneg)))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse
