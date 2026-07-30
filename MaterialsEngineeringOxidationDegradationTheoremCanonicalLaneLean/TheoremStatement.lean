import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure OxidationDegradationAdmittedObject where
  material : Type u
  oxidationKinetics : Prop
  degradationModel : Prop
  protectiveLayer : Prop
  conclusion : oxidationKinetics ∧ degradationModel ∧ protectiveLayer

def OxidationDegradationWitnessClosed (O : OxidationDegradationAdmittedObject) : Prop :=
  O.oxidationKinetics ∧ O.degradationModel ∧ O.protectiveLayer

theorem witness_closed_from_admitted (O : OxidationDegradationAdmittedObject) :
    OxidationDegradationWitnessClosed O := by
  exact O.conclusion

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse