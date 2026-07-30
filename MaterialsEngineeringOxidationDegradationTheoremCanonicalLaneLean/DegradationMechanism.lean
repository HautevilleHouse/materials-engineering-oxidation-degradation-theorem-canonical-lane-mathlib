import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure DegradationMechanismPackage where
  voidFormation : Prop
  crackInitiation : Prop
  spallation : Prop
  oxideBreakaway : Prop
  cyclicOxidation : Prop

structure DegradationMechanismEvidence (D : DegradationMechanismPackage) where
  voidFormationClosed : D.voidFormation
  crackInitiationClosed : D.crackInitiation
  spallationClosed : D.spallation
  oxideBreakawayClosed : D.oxideBreakaway
  cyclicOxidationClosed : D.cyclicOxidation

def DegradationMechanismClosed (D : DegradationMechanismPackage) : Prop :=
  D.voidFormation ∧ D.crackInitiation ∧ D.spallation ∧
  D.oxideBreakaway ∧ D.cyclicOxidation

theorem degradation_mechanism_closed_from_evidence
    (D : DegradationMechanismPackage) (E : DegradationMechanismEvidence D) :
    DegradationMechanismClosed D := by
  exact And.intro E.voidFormationClosed
    (And.intro E.crackInitiationClosed
      (And.intro E.spallationClosed
        (And.intro E.oxideBreakawayClosed E.cyclicOxidationClosed)))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse