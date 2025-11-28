---AHPlayerState
---    Base player state class used by this project.
---@class AHPlayerState : AModularPlayerState
---@field public OnHelixPlayerNameChanged MulticastDelegate @Broadcasted when name of player changes
---@field protected PlayerNameCustom string @Custom player name, or blank if none.
---@field protected PawnData UHPawnData
---@field private AbilitySystemComponent ULyraAbilitySystemComponent @The ability system component sub-object used by player characters.
---@field private HealthSet ULyraHealthSet @Health attribute set used by this actor.
---@field private CombatSet ULyraCombatSet @Combat attribute set used by this actor.
---@field private MyPlayerConnectionType ELyraPlayerConnectionType
---@field private MyFaction FFaction
---@field private StatTags FGameplayTagStackContainer
---@field private ReplicatedViewRotation FRotator
local AHPlayerState = {}

---Blueprint function to send an RPC to set custom player name
---@param NewName string
function AHPlayerState:SetPlayerNameCustom_Server(NewName) end

---Blueprint function to set custom player name
---@param NewName string
function AHPlayerState:SetPlayerNameCustom(NewName) end

---Removes a specified number of stacks from the tag (does nothing if StackCount is below 1)
---@param Tag FGameplayTag
---@param StackCount integer
function AHPlayerState:RemoveStatTagStack(Tag, StackCount) end

function AHPlayerState:OnRep_PlayerNameCustom() end

function AHPlayerState:OnRep_PawnData() end

function AHPlayerState:OnRep_MyFaction() end

---Called when owner controller becomes valid on both server and clients. This is the case during beginplay for server instances, but clients need to replicate their player state ref first in the controller class within AController::OnRep_PlayerState
---@param OwningController AController
function AHPlayerState:OnInitialized_BP(OwningController) end

---Returns true if there is at least one stack of the specified tag
---@param Tag FGameplayTag
---@return boolean
function AHPlayerState:HasStatTag(Tag) end

---Returns the stack count of the specified tag (or 0 if the tag is not present)
---@param Tag FGameplayTag
---@return integer
function AHPlayerState:GetStatTagStackCount(Tag) end

---@return AHPlayerController
function AHPlayerState:GetLyraPlayerController() end

---@return ULyraAbilitySystemComponent
function AHPlayerState:GetLyraAbilitySystemComponent() end

---Returns the Team ID of the team the player belongs to.
---@return integer
function AHPlayerState:GetFactionId() end

---Send a message to just this player
---(use only for client notifications like accolades, quest toasts, etc... that can handle being occasionally lost)
---@param Message FLyraVerbMessage
function AHPlayerState:ClientBroadcastMessage(Message) end

---Adds a specified number of stacks to the tag (does nothing if StackCount is below 1)
---@param Tag FGameplayTag
---@param StackCount integer
function AHPlayerState:AddStatTagStack(Tag, StackCount) end

---
---@param Faction FFaction
function AHPlayerState:EventSetFaction(Faction) end

---
---@param OutFaction FFaction @[out] 
function AHPlayerState:EventGetFaction(OutFaction) end

---return a Lua file path which is relative to project's 'Content/Script', for example 'Weapon.BP_DefaultProjectile_C'
---@return string
function AHPlayerState:GetModuleName() end

