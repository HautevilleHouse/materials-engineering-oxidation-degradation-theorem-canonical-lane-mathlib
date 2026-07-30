import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure StressCorrosionPackage where
  anodicDissolution : Prop
  hydrogenEmbrittlement : Prop
  crackTipMechanism : Prop
  thresholdStressIntensity : Prop

structure StressCorrosionEvidence (S : StressCorrosionPackage) where
  anodicDissolutionClosed : S.anodicDissolution
  hydrogenEmbrittlementClosed : S.hydrogenEmbrittlement
  crackTipMechanismClosed : S.crackTipMechanism
  thresholdStressIntensityClosed : S.thresholdStressIntensity

def StressCorrosionClosed (S : StressCorrosionPackage) : Prop :=
  S.anodicDissolution ∧ S.hydrogenEmbrittlement ∧ S.crackTipMechanism ∧ S.thresholdStressIntensity

theorem stress_corrosion_closed_from_evidence (S : StressCorrosionPackage) (E : StressCorrosionEvidence S) :
    StressCorrosionClosed S := by
  exact And.intro E.anodicDissolutionClosed
    (And.intro E.hydrogenEmbrittlementClosed
      (And.intro E.crackTipMechanismClosed E.thresholdStressIntensityClosed))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse