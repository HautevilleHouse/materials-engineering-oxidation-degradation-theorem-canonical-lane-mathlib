import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure ElasticityPackage where
  elasticModuli : Prop
  stressStrainRelationship : Prop
  anisotropicElasticity : Prop
  elasticWavePropagation : Prop
  elasticStability : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticModuliClosed : E.elasticModuli
  stressStrainRelationshipClosed : E.stressStrainRelationship
  anisotropicElasticityClosed : E.anisotropicElasticity
  elasticWavePropagationClosed : E.elasticWavePropagation
  elasticStabilityClosed : E.elasticStability

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.elasticModuli ∧ E.stressStrainRelationship ∧
  E.anisotropicElasticity ∧ E.elasticWavePropagation ∧ E.elasticStability

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.elasticModuliClosed
    (And.intro Ev.stressStrainRelationshipClosed
      (And.intro Ev.anisotropicElasticityClosed
        (And.intro Ev.elasticWavePropagationClosed Ev.elasticStabilityClosed)))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse
