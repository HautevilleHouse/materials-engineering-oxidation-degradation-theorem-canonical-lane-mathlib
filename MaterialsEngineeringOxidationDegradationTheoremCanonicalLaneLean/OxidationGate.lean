import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse