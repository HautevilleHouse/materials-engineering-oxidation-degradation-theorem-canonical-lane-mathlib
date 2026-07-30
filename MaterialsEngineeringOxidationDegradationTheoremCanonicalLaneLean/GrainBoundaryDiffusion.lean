import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure GrainBoundaryDiffusionPackage where
  fastPathDiffusion : Prop
  segregationEffect : Prop
  precipitateFormation : Prop
  degradationAcceleration : Prop

structure GrainBoundaryDiffusionEvidence (G : GrainBoundaryDiffusionPackage) where
  fastPathDiffusionClosed : G.fastPathDiffusion
  segregationEffectClosed : G.segregationEffect
  precipitateFormationClosed : G.precipitateFormation
  degradationAccelerationClosed : G.degradationAcceleration

def GrainBoundaryDiffusionClosed (G : GrainBoundaryDiffusionPackage) : Prop :=
  G.fastPathDiffusion ∧ G.segregationEffect ∧ G.precipitateFormation ∧ G.degradationAcceleration

theorem grain_boundary_diffusion_closed_from_evidence (G : GrainBoundaryDiffusionPackage) (E : GrainBoundaryDiffusionEvidence G) :
    GrainBoundaryDiffusionClosed G := by
  exact And.intro E.fastPathDiffusionClosed
    (And.intro E.segregationEffectClosed
      (And.intro E.precipitateFormationClosed E.degradationAccelerationClosed))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse