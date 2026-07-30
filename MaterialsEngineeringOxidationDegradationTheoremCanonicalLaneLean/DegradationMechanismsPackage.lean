import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure DegradationMechanismsPackage where
  oxideSpallation : Prop
  internalOxidation : Prop
  oxideEvaporation : Prop
  cyclicOxidationDegradation : Prop
  protectiveScaleBreakdown : Prop
  oxidationInducedFracture : Prop

structure DegradationMechanismsEvidence (D : DegradationMechanismsPackage) where
  oxideSpallationClosed : D.oxideSpallation
  internalOxidationClosed : D.internalOxidation
  oxideEvaporationClosed : D.oxideEvaporation
  cyclicOxidationDegradationClosed : D.cyclicOxidationDegradation
  protectiveScaleBreakdownClosed : D.protectiveScaleBreakdown
  oxidationInducedFractureClosed : D.oxidationInducedFracture

def DegradationMechanismsClosed (D : DegradationMechanismsPackage) : Prop :=
  D.oxideSpallation ∧ D.internalOxidation ∧ D.oxideEvaporation ∧
  D.cyclicOxidationDegradation ∧ D.protectiveScaleBreakdown ∧ D.oxidationInducedFracture

theorem degradation_mechanisms_closed_from_evidence (D : DegradationMechanismsPackage)
    (E : DegradationMechanismsEvidence D) : DegradationMechanismsClosed D := by
  exact And.intro E.oxideSpallationClosed
    (And.intro E.internalOxidationClosed
      (And.intro E.oxideEvaporationClosed
        (And.intro E.cyclicOxidationDegradationClosed
          (And.intro E.protectiveScaleBreakdownClosed E.oxidationInducedFractureClosed))))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse
