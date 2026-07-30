import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure StressCorrosionCrackingPackage where
  tensileStress : Prop
  corrosiveEnvironment : Prop
  crackPropagation : Prop
  thresholdStress : Prop
  fractureToughness : Prop

structure StressCorrosionCrackingEvidence (S : StressCorrosionCrackingPackage) where
  tensileStressClosed : S.tensileStress
  corrosiveEnvironmentClosed : S.corrosiveEnvironment
  crackPropagationClosed : S.crackPropagation
  thresholdStressClosed : S.thresholdStress
  fractureToughnessClosed : S.fractureToughness

def StressCorrosionCrackingClosed (S : StressCorrosionCrackingPackage) : Prop :=
  S.tensileStress ∧ S.corrosiveEnvironment ∧ S.crackPropagation ∧ S.thresholdStress ∧ S.fractureToughness

theorem stress_corrosion_cracking_closed_from_evidence (S : StressCorrosionCrackingPackage)
    (E : StressCorrosionCrackingEvidence S) : StressCorrosionCrackingClosed S := by
  exact And.intro E.tensileStressClosed
    (And.intro E.corrosiveEnvironmentClosed
      (And.intro E.crackPropagationClosed (And.intro E.thresholdStressClosed E.fractureToughnessClosed)))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse