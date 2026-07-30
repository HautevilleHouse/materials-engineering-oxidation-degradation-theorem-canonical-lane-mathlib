import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse