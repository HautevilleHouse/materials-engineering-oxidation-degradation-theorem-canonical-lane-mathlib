import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Prop
  crystalSystem : Prop
  spaceGroup : Prop
  bravaisLattice : Prop
  symmetryReduction : Prop
  unitCellParameters : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  crystalSystemClosed : C.crystalSystem
  spaceGroupClosed : C.spaceGroup
  bravaisLatticeClosed : C.bravaisLattice
  symmetryReductionClosed : C.symmetryReduction
  unitCellParametersClosed : C.unitCellParameters

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.crystalSystem ∧ C.spaceGroup ∧
  C.bravaisLattice ∧ C.symmetryReduction ∧ C.unitCellParameters

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed
    (And.intro E.crystalSystemClosed
      (And.intro E.spaceGroupClosed
        (And.intro E.bravaisLatticeClosed
          (And.intro E.symmetryReductionClosed E.unitCellParametersClosed))))

end MaterialsEngineeringOxidationDegradationTheoremCanonicalLaneLean
end HautevilleHouse
