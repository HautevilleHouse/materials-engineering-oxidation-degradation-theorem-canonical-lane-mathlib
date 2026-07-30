import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure DiffusionBarrierPackage where
  oxideThickness : Prop
  diffusionCoefficient : Prop
  concentrationGradient : Prop
  barrierEffectiveness : Prop

structure DiffusionBarrierEvidence (D : DiffusionBarrierPackage) where
  oxideThicknessClosed : D.oxideThickness
  diffusionCoefficientClosed : D.diffusionCoefficient
  concentrationGradientClosed : D.concentrationGradient
  barrierEffectivenessClosed : D.barrierEffectiveness

def DiffusionBarrierClosed (D : DiffusionBarrierPackage) : Prop :=
  D.oxideThickness ∧ D.diffusionCoefficient ∧ D.concentrationGradient ∧ D.barrierEffectiveness

theorem diffusion_barrier_closed_from_evidence (D : DiffusionBarrierPackage)
    (E : DiffusionBarrierEvidence D) : DiffusionBarrierClosed D := by
  exact And.intro E.oxideThicknessClosed
    (And.intro E.diffusionCoefficientClosed (And.intro E.concentrationGradientClosed E.barrierEffectivenessClosed))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse