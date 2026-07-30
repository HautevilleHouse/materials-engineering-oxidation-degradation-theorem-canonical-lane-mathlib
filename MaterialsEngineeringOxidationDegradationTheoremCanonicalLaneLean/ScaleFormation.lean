import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure ScaleFormationPackage where
  oxideScaleAdherence : Prop
  scaleGrowthKinetics : Prop
  scaleSpallationResistance : Prop
  protectiveScaleFormation : Prop
  adherenceClosed : oxideScaleAdherence
  kineticsClosed : scaleGrowthKinetics
  spallationClosed : scaleSpallationResistance
  protectiveClosed : protectiveScaleFormation

structure ScaleFormationEvidence (S : ScaleFormationPackage) where
  adherenceClosed : S.adherenceClosed
  kineticsClosed : S.kineticsClosed
  spallationClosed : S.spallationClosed
  protectiveClosed : S.protectiveClosed

def ScaleFormationClosed (S : ScaleFormationPackage) : Prop :=
  S.oxideScaleAdherence ∧ S.scaleGrowthKinetics ∧ S.scaleSpallationResistance ∧ S.protectiveScaleFormation

theorem scale_formation_closed_from_evidence (S : ScaleFormationPackage) (E : ScaleFormationEvidence S) : ScaleFormationClosed S := by
  exact And.intro E.adherenceClosed (And.intro E.kineticsClosed (And.intro E.spallationClosed E.protectiveClosed))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse