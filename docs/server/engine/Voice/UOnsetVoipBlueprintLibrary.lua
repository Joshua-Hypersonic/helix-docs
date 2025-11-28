---This is a wrapper/helper around the most common plugin functions.
---Users requested this to have a faster or more direct access to the functions.
---@class UOnsetVoipBlueprintLibrary : UBlueprintFunctionLibrary
local UOnsetVoipBlueprintLibrary = {}

---This will call SetVolumeMultiplier() on all existing UOnsetVoipAudioComponent that are used for 3D audio/voice playback. (i.e. channel 0 / world / proximity)
---@param InVolume number
function UOnsetVoipBlueprintLibrary.SetVoipAudioComponentsVolume_3DVoice(InVolume) end

---This will call SetVolumeMultiplier() on all existing UOnsetVoipAudioComponent that are used for 2D audio/voice playback. (i.e. voice channels)
---@param InVolume number
function UOnsetVoipBlueprintLibrary.SetVoipAudioComponentsVolume_2DVoice(InVolume) end

---This will call SetVolumeMultiplier() on all existing UOnsetVoipAudioComponent for both 2D and 3D audio/voice playback.
---@param InVolume number
function UOnsetVoipBlueprintLibrary.SetVoipAudioComponentsVolume(InVolume) end

---See UOnsetVoipTalker::SetVoiceChannel
---@param VoipTalker UOnsetVoipTalker
---@param ChannelId integer
---@param bAdd boolean
function UOnsetVoipBlueprintLibrary.SetTalkerVoiceChannel(VoipTalker, ChannelId, bAdd) end

---See UOnsetVoipTalker::SetMutedOnVoiceChannel
---@param VoipTalker UOnsetVoipTalker
---@param bMute boolean
---@param ChannelId integer
function UOnsetVoipBlueprintLibrary.SetTalkerMutedOnVoiceChannel(VoipTalker, bMute, ChannelId) end

---See UOnsetVoipTalker::SetMutedForVoipTalker
---@param VoipTalker UOnsetVoipTalker
---@param bMute boolean
---@param OtherVoipTalker UOnsetVoipTalker
function UOnsetVoipBlueprintLibrary.SetTalkerMutedForVoipTalker(VoipTalker, bMute, OtherVoipTalker) end

---See UOnsetVoipTalker::SetMutedForPlayerState
---@param VoipTalker UOnsetVoipTalker
---@param bMute boolean
---@param PlayerState APlayerState
function UOnsetVoipBlueprintLibrary.SetTalkerMutedForPlayerState(VoipTalker, bMute, PlayerState) end

---Blueprint setter helper for cvar "voice.SilenceDetectionThreshold"
---@param InThreshold number
function UOnsetVoipBlueprintLibrary.SetSilenceDetectionThreshold(InThreshold) end

---Blueprint setter helper for cvar "voice.MicNoiseGateThreshold"
---@param InThreshold number
function UOnsetVoipBlueprintLibrary.SetMicNoiseGateThreshold(InThreshold) end

---@param Message string
---@param WorldContextObject UObject
function UOnsetVoipBlueprintLibrary.PrintToConsole(Message, WorldContextObject) end

---See UOnsetVoipTalker::IsMutedOnVoiceChannel
---@param VoipTalker UOnsetVoipTalker
---@param ChannelId integer
---@return boolean
function UOnsetVoipBlueprintLibrary.IsTalkerMutedOnVoiceChannel(VoipTalker, ChannelId) end

---See UOnsetVoipTalker::IsMutedForVoipTalker
---@param VoipTalker UOnsetVoipTalker
---@param OtherVoipTalker UOnsetVoipTalker
---@return boolean
function UOnsetVoipBlueprintLibrary.IsTalkerMutedForVoipTalker(VoipTalker, OtherVoipTalker) end

---See UOnsetVoipTalker::IsMutedForPlayerState
---@param VoipTalker UOnsetVoipTalker
---@param PlayerState APlayerState
---@return boolean
function UOnsetVoipBlueprintLibrary.IsTalkerMutedForPlayerState(VoipTalker, PlayerState) end

---See UOnsetVoipTalker::IsInVoiceChannel
---@param VoipTalker UOnsetVoipTalker
---@param ChannelId integer
---@return boolean
function UOnsetVoipBlueprintLibrary.IsTalkerInVoiceChannel(VoipTalker, ChannelId) end

---See UOnsetVoipWorldSubsystem::GetVoipTalker
---@param PlayerState APlayerState
---@param WorldContextObject UObject
---@return UOnsetVoipTalker
function UOnsetVoipBlueprintLibrary.GetTalkerByPlayerState(PlayerState, WorldContextObject) end

---Blueprint getter helper for cvar "voice.SilenceDetectionThreshold"
---@return number
function UOnsetVoipBlueprintLibrary.GetSilenceDetectionThreshold() end

---In editor gets the current Play In Editor instance id.
---@param WorldContextObject UObject
---@return integer
function UOnsetVoipBlueprintLibrary.GetPIEInstanceID(WorldContextObject) end

---Get plugin version as string.
---@return string
function UOnsetVoipBlueprintLibrary.GetOnsetVoipVersion() end

---Blueprint getter helper for cvar "voice.MicNoiseGateThreshold"
---@return number
function UOnsetVoipBlueprintLibrary.GetMicNoiseGateThreshold() end

---See UOnsetVoipWorldSubsystem::GetAllTalkersInVoiceChannel
---@param ChannelId integer
---@param WorldContextObject UObject
---@return TArray_UOnsetVoipTalker_
function UOnsetVoipBlueprintLibrary.GetAllTalkersInVoiceChannel(ChannelId, WorldContextObject) end

---See UOnsetVoipWorldSubsystem::GetAllTalkers
---@param WorldContextObject UObject
---@return TArray_UOnsetVoipTalker_
function UOnsetVoipBlueprintLibrary.GetAllTalkers(WorldContextObject) end

