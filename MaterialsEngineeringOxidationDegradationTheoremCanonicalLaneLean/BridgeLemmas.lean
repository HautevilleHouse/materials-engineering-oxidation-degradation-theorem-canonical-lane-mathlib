import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OxidationDegradationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse