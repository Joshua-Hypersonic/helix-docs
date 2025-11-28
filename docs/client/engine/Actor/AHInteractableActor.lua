---@class AHInteractableActor : AActor
---@field public Options TArray<FInteractionOption>
---@field public Root USceneComponent
---@field public InteractionPoint USceneComponent
---@field public BoxCollision UBoxComponent
---@field public InteractableProp AActor
---@field public StaticMeshComponent UStaticMeshComponent
---@field public StaticMeshDynamicMaterial UMaterialInstanceDynamic
---@field public OnLuaInteraction MulticastDelegate
local AHInteractableActor = {}

---@param NewRelativeLocation FVector
function AHInteractableActor:SetInteractionPointRelativeLocation(NewRelativeLocation) end

---@param NewAbsoluteLocation FVector
function AHInteractableActor:SetInteractionPointAbsoluteLocation(NewAbsoluteLocation) end

---@param InInteractableProp AActor
function AHInteractableActor:SetInteractableProp(InInteractableProp) end

function AHInteractableActor:OnRep_InteractableProp() end

---@param InStaticMesh UStaticMesh
---@param bCreateDynamicMaterial boolean
---@return UStaticMeshComponent
function AHInteractableActor:MakeStaticMesh(InStaticMesh, bCreateDynamicMaterial) end

---@param InInteractionOption FInteractionOption
function AHInteractableActor:AddInteractionOption(InInteractionOption) end

---return a Lua file path which is relative to project's 'Content/Script', for example 'Weapon.BP_DefaultProjectile_C'
---@return string
function AHInteractableActor:GetModuleName() end

