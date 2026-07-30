import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseEquilibrium : Prop
  binaryPhaseDiagrams : Prop
  ternaryPhaseDiagrams : Prop
  solidSolutionRegions : Prop
  compoundPhases : Prop
  invariantReactions : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseEquilibriumClosed : P.phaseEquilibrium
  binaryPhaseDiagramsClosed : P.binaryPhaseDiagrams
  ternaryPhaseDiagramsClosed : P.ternaryPhaseDiagrams
  solidSolutionRegionsClosed : P.solidSolutionRegions
  compoundPhasesClosed : P.compoundPhases
  invariantReactionsClosed : P.invariantReactions

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseEquilibrium ∧ P.binaryPhaseDiagrams ∧ P.ternaryPhaseDiagrams ∧
  P.solidSolutionRegions ∧ P.compoundPhases ∧ P.invariantReactions

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseEquilibriumClosed
    (And.intro E.binaryPhaseDiagramsClosed
      (And.intro E.ternaryPhaseDiagramsClosed
        (And.intro E.solidSolutionRegionsClosed
          (And.intro E.compoundPhasesClosed E.invariantReactionsClosed))))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse
