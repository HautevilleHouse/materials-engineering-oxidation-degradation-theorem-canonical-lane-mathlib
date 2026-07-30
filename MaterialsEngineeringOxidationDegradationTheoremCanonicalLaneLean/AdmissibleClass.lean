import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MaterialsEngineeringOxidationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse