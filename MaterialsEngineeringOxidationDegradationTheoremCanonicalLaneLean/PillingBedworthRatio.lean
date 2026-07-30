import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure PillingBedworthRatioPackage where
  molarVolumeOxide : ℝ
  molarVolumeMetal : ℝ
  scaleProtectiveness : Prop
  pbrComputed : ℝ
  pbrProtectiveRange : ℝ × ℝ

structure PillingBedworthRatioEvidence (P : PillingBedworthRatioPackage) where
  molarVolumesPositive : P.molarVolumeOxide > 0 ∧ P.molarVolumeMetal > 0
  pbrCalculationCorrect : P.pbrComputed = P.molarVolumeOxide / P.molarVolumeMetal
  pbrInProtectiveRange : P.pbrComputed ≥ P.pbrProtectiveRange.1 ∧ P.pbrComputed ≤ P.pbrProtectiveRange.2
  protectivenessImplied : P.scaleProtectiveness ↔ (P.pbrComputed ≥ 1 ∧ P.pbrComputed ≤ 3)

def PillingBedworthRatioClosed (P : PillingBedworthRatioPackage) : Prop :=
  (P.molarVolumeOxide > 0 ∧ P.molarVolumeMetal > 0) ∧
  P.pbrComputed = P.molarVolumeOxide / P.molarVolumeMetal ∧
  P.pbrComputed ≥ P.pbrProtectiveRange.1 ∧ P.pbrComputed ≤ P.pbrProtectiveRange.2 ∧
  (P.scaleProtectiveness ↔ (P.pbrComputed ≥ 1 ∧ P.pbrComputed ≤ 3))

theorem pilling_bedworth_ratio_closed_from_evidence (P : PillingBedworthRatioPackage)
    (E : PillingBedworthRatioEvidence P) : PillingBedworthRatioClosed P := by
  rcases E.molarVolumesPositive with ⟨hOx, hMet⟩
  exact And.intro (And.intro hOx hMet)
    (And.intro E.pbrCalculationCorrect
      (And.intro E.pbrInProtectiveRange.1
        (And.intro E.pbrInProtectiveRange.2 E.protectivenessImplied)))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse
