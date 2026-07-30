import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure AdmittedObject where
  material : Type
  oxideScaleFormation : Prop
  parabolicRateConstant : Prop
  diffusionLimitedOxidation : Prop
  conclusion : oxideScaleFormation ∧ parabolicRateConstant ∧ diffusionLimitedOxidation

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse