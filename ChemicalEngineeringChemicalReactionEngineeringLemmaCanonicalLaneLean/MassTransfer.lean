import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionEngineeringLemma

structure MassTransferPackage where
  concentrationField : Type
  diffusivity : Type
  fluxExpression : Prop
  boundaryLayer : Prop
  reactionCoupling : Prop

structure MassTransferEvidence (M : MassTransferPackage) where
  fluxExpressionClosed : M.fluxExpression
  boundaryLayerClosed : M.boundaryLayer
  reactionCouplingClosed : M.reactionCoupling

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.fluxExpression ∧ M.boundaryLayer ∧ M.reactionCoupling

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage) (E : MassTransferEvidence M) :
    MassTransferClosed M := by
  exact And.intro E.fluxExpressionClosed
    (And.intro E.boundaryLayerClosed E.reactionCouplingClosed)

end ChemicalReactionEngineeringLemma
end HautevilleHouse