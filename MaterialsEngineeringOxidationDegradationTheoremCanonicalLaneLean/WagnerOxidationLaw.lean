import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure WagnerOxidationLawPackage where
  parabolicRateConstant : ℝ
  activationEnergy : ℝ
  temperature : ℝ
  timeExponent : ℕ
  oxideThickness : ℝ

structure WagnerOxidationLawEvidence (W : WagnerOxidationLawPackage) where
  ratePositive : W.parabolicRateConstant > 0
  activationEnergyFinite : W.activationEnergy < ∞
  temperaturePositive : W.temperature > 0
  exponentOneOrTwo : W.timeExponent = 1 ∨ W.timeExponent = 2
  thicknessFormulaValid : W.oxideThickness = W.parabolicRateConstant * (W.temperature ^ W.timeExponent)

def WagnerOxidationLawClosed (W : WagnerOxidationLawPackage) : Prop :=
  W.parabolicRateConstant > 0 ∧ W.activationEnergy < ∞ ∧ W.temperature > 0 ∧
  (W.timeExponent = 1 ∨ W.timeExponent = 2) ∧
  W.oxideThickness = W.parabolicRateConstant * (W.temperature ^ W.timeExponent)

theorem wagner_oxidation_law_closed_from_evidence (W : WagnerOxidationLawPackage)
    (E : WagnerOxidationLawEvidence W) : WagnerOxidationLawClosed W := by
  exact And.intro E.ratePositive
    (And.intro E.activationEnergyFinite
      (And.intro E.temperaturePositive
        (And.intro E.exponentOneOrTwo E.thicknessFormulaValid)))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse
