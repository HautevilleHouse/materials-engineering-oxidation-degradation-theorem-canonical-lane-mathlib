import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  crackGrowthCriterion : Prop
  stressIntensityFactor : Prop
  fractureToughness : Prop
  fatigueCrackPropagation : Prop
  fractureMechanisms : Prop
  environmentalCracking : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackGrowthCriterionClosed : F.crackGrowthCriterion
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  fatigueCrackPropagationClosed : F.fatigueCrackPropagation
  fractureMechanismsClosed : F.fractureMechanisms
  environmentalCrackingClosed : F.environmentalCracking

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackGrowthCriterion ∧ F.stressIntensityFactor ∧ F.fractureToughness ∧
  F.fatigueCrackPropagation ∧ F.fractureMechanisms ∧ F.environmentalCracking

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.crackGrowthCriterionClosed
    (And.intro E.stressIntensityFactorClosed
      (And.intro E.fractureToughnessClosed
        (And.intro E.fatigueCrackPropagationClosed
          (And.intro E.fractureMechanismsClosed E.environmentalCrackingClosed))))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse
