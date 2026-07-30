import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure ScaleFormationKineticsPackage where
  nucleationRate : Prop
  growthMechanism : Prop
  grainBoundaryDiffusion : Prop
  scaleThickness : Prop
  oxideComposition : Prop

structure ScaleFormationKineticsEvidence (K : ScaleFormationKineticsPackage) where
  nucleationRateClosed : K.nucleationRate
  growthMechanismClosed : K.growthMechanism
  grainBoundaryDiffusionClosed : K.grainBoundaryDiffusion
  scaleThicknessClosed : K.scaleThickness
  oxideCompositionClosed : K.oxideComposition

def ScaleFormationKineticsClosed (K : ScaleFormationKineticsPackage) : Prop :=
  K.nucleationRate ∧ K.growthMechanism ∧ K.grainBoundaryDiffusion ∧
  K.scaleThickness ∧ K.oxideComposition

theorem scale_formation_kinetics_closed_from_evidence
    (K : ScaleFormationKineticsPackage) (E : ScaleFormationKineticsEvidence K) :
    ScaleFormationKineticsClosed K := by
  exact And.intro E.nucleationRateClosed
    (And.intro E.growthMechanismClosed
      (And.intro E.grainBoundaryDiffusionClosed
        (And.intro E.scaleThicknessClosed E.oxideCompositionClosed)))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse