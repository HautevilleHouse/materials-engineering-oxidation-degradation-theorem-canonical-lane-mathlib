import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure DiffusionLayerPackage where
  fickianDiffusion : Prop
  concentrationProfile : Prop
  scaleDependentMobility : Prop
  boundaryLayerThickness : Prop

structure DiffusionLayerEvidence (D : DiffusionLayerPackage) where
  fickianDiffusionClosed : D.fickianDiffusion
  concentrationProfileClosed : D.concentrationProfile
  scaleDependentMobilityClosed : D.scaleDependentMobility
  boundaryLayerThicknessClosed : D.boundaryLayerThickness

def DiffusionLayerClosed (D : DiffusionLayerPackage) : Prop :=
  D.fickianDiffusion ∧ D.concentrationProfile ∧ D.scaleDependentMobility ∧ D.boundaryLayerThickness

theorem diffusion_layer_closed_from_evidence (D : DiffusionLayerPackage) (E : DiffusionLayerEvidence D) :
    DiffusionLayerClosed D := by
  exact And.intro E.fickianDiffusionClosed
    (And.intro E.concentrationProfileClosed
      (And.intro E.scaleDependentMobilityClosed E.boundaryLayerThicknessClosed))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse