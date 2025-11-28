---AHPlayerController
---    The base player controller class used by this project.
---@class AHPlayerController : ACommonPlayerController
---@field public bCanRestartPlayer boolean
---@field public OnTalkingStateChange MulticastDelegate
---@field public VoiceSubsystem TWeakObjectPtr<UOnsetVoipLocalPlayerSubsystem>
---@field private PendingLevelsToReleaseControlledPawn TSet<string>
---@field private DebugComponent UHelixDebugComponent @Debugging component for this player controller.
local AHPlayerController = {}

---@param InChannelId integer
function AHPlayerController:UnmuteInVoiceChannel(InChannelId) end

---@param InOtherPlayer APlayerState
function AHPlayerController:UnmuteForOtherPlayer(InOtherPlayer) end

---Call from game state logic to start recording an automatic client replay if ShouldRecordClientReplay returns true
---@return boolean
function AHPlayerController:TryToRecordClientReplay() end

---Server -> Server
---@param Name string
---@param Payload TArray_integer_
function AHPlayerController:TriggerLocalServerEvent(Name, Payload) end

---Client -> Client
---@param Name string
---@param Payload TArray_integer_
function AHPlayerController:TriggerLocalClientEvent(Name, Payload) end

---@param Name string
---@param Payload TArray_integer_
---@param Objects TArray_UObject_
function AHPlayerController:TriggerInternalServerEvent(Name, Payload, Objects) end

---@param Name string
---@param Payload TArray_integer_
---@param Objects TArray_UObject_
function AHPlayerController:TriggerInternalClientEvent(Name, Payload, Objects) end

---@param InThreshold number
function AHPlayerController:SetMicSilenceDetectionThreshold(InThreshold) end

---@param InThreshold number
function AHPlayerController:SetMicNoiseGateThreshold(InThreshold) end

---@param bEnabled boolean
function AHPlayerController:SetIsAutoRunning(bEnabled) end

---@param Transform FTransform
function AHPlayerController:ServerRestartPlayerAtTransform(Transform) end

---Run a cheat command on the server for all players.
---@param Msg string
function AHPlayerController:ServerCheatAll(Msg) end

---Run a cheat command on the server.
---@param Msg string
function AHPlayerController:ServerCheat(Msg) end

---Starts client simulation.
function AHPlayerController:ResumeClientSimulation() end

---@param InPawn APawn
function AHPlayerController:PossessOnNextFrame(InPawn) end

---Stops client simulation.
function AHPlayerController:PauseClientSimulation() end

---@param bIsTalking boolean
function AHPlayerController:OnVoipTalkingStateChange(bIsTalking) end

---@param World UWorld
---@param StreamingLevel ULevelStreaming
---@param LoadedLevel ULevel
function AHPlayerController:OnLevelBeginMakingVisible(World, StreamingLevel, LoadedLevel) end

---@param InChannelId integer
function AHPlayerController:MuteInVoiceChannel(InChannelId) end

---@param InOtherPlayer APlayerState
function AHPlayerController:MuteForOtherPlayer(InOtherPlayer) end

---@param InChannelId integer
function AHPlayerController:LeaveVoiceChannel(InChannelId) end

function AHPlayerController:K2_OnStartAutoRun() end

function AHPlayerController:K2_OnEndAutoRun() end

---Voice Chat Functions
---@param InChannelId integer
function AHPlayerController:JoinVoiceChannel(InChannelId) end

---@return boolean
function AHPlayerController:IsTalking() end

---@param InChannelId integer
---@return boolean
function AHPlayerController:IsMutedInVoiceChannel(InChannelId) end

---@param InOtherPlayer APlayerState
---@return boolean
function AHPlayerController:IsMutedForOtherPlayer(InOtherPlayer) end

---@param InChannelId integer
---@return boolean
function AHPlayerController:IsInVoiceChannel(InChannelId) end

---@return UOnsetVoipTalker
function AHPlayerController:GetVoiceTalker() end

---@return TArray_integer_
function AHPlayerController:GetVoiceChannels() end

---@return number
function AHPlayerController:GetVoiceAmplitude() end

---@return number
function AHPlayerController:GetMicSilenceDetectionThreshold() end

---@return number
function AHPlayerController:GetMicNoiseGateThreshold() end

---@return AHPlayerState
function AHPlayerController:GetLyraPlayerState() end

---@return AHHUD
function AHPlayerController:GetLyraHUD() end

---@return ULyraAbilitySystemComponent
function AHPlayerController:GetLyraAbilitySystemComponent() end

---@return boolean
function AHPlayerController:GetIsAutoRunning() end

---@return EHelixInputMode
function AHPlayerController:GetInputMode() end

---@param FactionDescriptor FFactionDescriptor @[out] 
---@return boolean
function AHPlayerController:GetFactionDescriptor(FactionDescriptor) end

---
---@param Faction FFaction
function AHPlayerController:EventSetFaction(Faction) end

---
---@param OutFaction FFaction @[out] 
function AHPlayerController:EventGetFaction(OutFaction) end

---return a Lua file path which is relative to project's 'Content/Script', for example 'Weapon.BP_DefaultProjectile_C'
---@return string
function AHPlayerController:GetModuleName() end

