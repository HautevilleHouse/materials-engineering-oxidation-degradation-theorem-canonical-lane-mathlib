import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure OxidationStructurePackage where
  metalMatrix : Type
  oxideLayer : Type
  diffusionZone : Type
  temperatureRange : Type
  oxideGrowthRate : Prop
  parabolicConstant : Prop
  diffusionCoefficient : Prop

structure OxidationStructureEvidence (O : OxidationStructurePackage) where
  oxideGrowthRateClosed : O.oxideGrowthRate
  parabolicConstantClosed : O.parabolicConstant
  diffusionCoefficientClosed : O.diffusionCoefficient

def OxidationStructureClosed (O : OxidationStructurePackage) : Prop :=
  O.oxideGrowthRate ∧ O.parabolicConstant ∧ O.diffusionCoefficient

theorem oxidation_structure_closed_from_evidence (O : OxidationStructurePackage)
    (E : OxidationStructureEvidence O) : OxidationStructureClosed O := by
  exact And.intro E.oxideGrowthRateClosed
    (And.intro E.parabolicConstantClosed E.diffusionCoefficientClosed)

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse