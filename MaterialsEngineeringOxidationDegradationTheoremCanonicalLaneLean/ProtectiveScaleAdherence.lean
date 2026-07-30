import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure ProtectiveScaleAdherencePackage where
  scaleAdhesion : Prop
  thermalExpansionMismatch : Prop
  voidFormation : Prop
  spallationResistance : Prop

structure ProtectiveScaleAdherenceEvidence (P : ProtectiveScaleAdherencePackage) where
  scaleAdhesionClosed : P.scaleAdhesion
  thermalExpansionMismatchClosed : P.thermalExpansionMismatch
  voidFormationClosed : P.voidFormation
  spallationResistanceClosed : P.spallationResistance

def ProtectiveScaleAdherenceClosed (P : ProtectiveScaleAdherencePackage) : Prop :=
  P.scaleAdhesion ∧ P.thermalExpansionMismatch ∧ P.voidFormation ∧ P.spallationResistance

theorem protective_scale_adherence_closed_from_evidence (P : ProtectiveScaleAdherencePackage)
    (E : ProtectiveScaleAdherenceEvidence P) : ProtectiveScaleAdherenceClosed P := by
  exact And.intro E.scaleAdhesionClosed
    (And.intro E.thermalExpansionMismatchClosed (And.intro E.voidFormationClosed E.spallationResistanceClosed))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse