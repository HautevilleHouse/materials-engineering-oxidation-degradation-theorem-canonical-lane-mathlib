import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure EnvironmentalInterfacePackage where
  oxygenPartialPressure : Prop
  temperature : Prop
  gasComposition : Prop
  flowConditions : Prop
  contaminantEffects : Prop

structure EnvironmentalInterfaceEvidence (E : EnvironmentalInterfacePackage) where
  oxygenPartialPressureClosed : E.oxygenPartialPressure
  temperatureClosed : E.temperature
  gasCompositionClosed : E.gasComposition
  flowConditionsClosed : E.flowConditions
  contaminantEffectsClosed : E.contaminantEffects

def EnvironmentalInterfaceClosed (E : EnvironmentalInterfacePackage) : Prop :=
  E.oxygenPartialPressure ∧ E.temperature ∧ E.gasComposition ∧
  E.flowConditions ∧ E.contaminantEffects

theorem environmental_interface_closed_from_evidence
    (E : EnvironmentalInterfacePackage) (Ev : EnvironmentalInterfaceEvidence E) :
    EnvironmentalInterfaceClosed E := by
  exact And.intro Ev.oxygenPartialPressureClosed
    (And.intro Ev.temperatureClosed
      (And.intro Ev.gasCompositionClosed
        (And.intro Ev.flowConditionsClosed Ev.contaminantEffectsClosed)))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse