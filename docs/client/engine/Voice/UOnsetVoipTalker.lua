---A UOnsetVoipTalker is automatically created and destroyed for each APlayerState.
---It handles the voice for that specific player.
---@class UOnsetVoipTalker : UObject
---@field public OnVoipTalkingStateChange MulticastDelegate @Called when this voip talker starts or stops talking.
---@field public OnVoipAudioDataReceived MulticastDelegate @* Called when this voip talker received new audio data. Format is raw signed 16-bit PCM. * Number of channels and sample rate are defined in UOnsetVoipSettings::VoiceCaptureChannels and VoiceCaptureSampleRate. * To cancel the audio from being played use CancelReceivedAudioData() inside this delegate.
---@field public MutedVoipTalkers TArray<TWeakObjectPtr<UOnsetVoipTalker>>
---@field public VoiceChannelIds TArray<integer> @Server only: Voice channel ids of this talker. Only used on the server not on the client. Use helper functions above to add/remove voice channels.
---@field public MutedVoiceChannelIds TArray<integer> @Server only: Voice channel ids that his talker is muted on and cannot speak but listen. Only used on the server not on the client. Use helper functions above to mute on voice channels.
---@field public DefaultOnsetVoipAudioComponentClass2D TSubclassOf<UOnsetVoipAudioComponent2D> @Used to override the audio component class for 2D voice.
---@field public DefaultOnsetVoipAudioComponentClass3D TSubclassOf<UOnsetVoipAudioComponent> @Used to override the audio component class for 3D voice.
---@field public CachedNameplateComponent UOnsetNameplateComponent @Reference to the nameplate component. Attached and owned by the pawn, therefore the "Cached" prefix.
---@field public CachedAudioComponent3D UOnsetVoipAudioComponent @Reference to the audio component of this players pawn. Used for 3d playback, created and attached to the pawn on demand. Attached and owned by the pawn, therefore the "Cached" prefix.
---@field public AudioComponent2D UOnsetVoipAudioComponent @Reference to the audio component, used for 2d playback in voice channels. Managed and own by this voip talker object.
local UOnsetVoipTalker = {}

---* This function can enable or disable the operation of a voip talker.
---* Calling this on a **server** will stop this talker from sending voice data to anyone.
---* Calling this on a **client** will stop this talker from playing/processing any of their audio data.
---*
---* This function is not the same as SetMuted. You probably just want to use SetMuted for muting audio. Especially on a listen server.
---@param bEnable boolean
function UOnsetVoipTalker:SetVoipEnabled(bEnable) end

---* **SERVER ONLY, do not call on client**
---*
---* This function adds a player/talker to a voice channel or removes them. Voice channels are a server side concept. Meaning only the server knows what channels a talker is part of.
---*
---* The ChannelId is an integer used to determine what players share the same channel. This can be any positive integer you like and is used purely for you to manage the channel ids.
---* If two talkers are in the same channel they are able to hear each other as a 2D voice.
---* ChannelId 0 is the world/3d/proximity channel. All talkers are automatically in channel 0. If you remove someone from channel 0 they will no longer participate in world/3d/proximity voice.
---*
---* Set bAdd to false to remove them from a channel. No further cleanup is required.
---@param ChannelId integer
---@param bAdd boolean
---@return boolean
function UOnsetVoipTalker:SetVoiceChannel(ChannelId, bAdd) end

---Server only: Mute this talker on a specific voice channel id. This only works when called on the server.
---@param bMute boolean
---@param ChannelId integer
function UOnsetVoipTalker:SetMutedOnVoiceChannel(bMute, ChannelId) end

---Server only: You can mute this talker for another voip talker.
---@param bMute boolean
---@param OtherVoipTalker UOnsetVoipTalker
function UOnsetVoipTalker:SetMutedForVoipTalker(bMute, OtherVoipTalker) end

---Server only: Same as SetMutedForVoipTalker but with a player state.
---@param bMute boolean
---@param PlayerState APlayerState
function UOnsetVoipTalker:SetMutedForPlayerState(bMute, PlayerState) end

---Mute this talker audio. Must be called on the client of the player who wants to mute this talker.
---@param bMute boolean
function UOnsetVoipTalker:SetMuted(bMute) end

---@param VoipTalker UOnsetVoipTalker
---@param bIsTalking boolean
---@param bIs2D boolean
function UOnsetVoipTalker:OnVoipTalkingStateChange__DelegateSignature(VoipTalker, bIsTalking, bIs2D) end

---@param VoipTalker UOnsetVoipTalker
---@param AudioData TArray_integer_
---@param bIs2D boolean
function UOnsetVoipTalker:OnVoipAudioDataReceived__DelegateSignature(VoipTalker, AudioData, bIs2D) end

---Called by the engine when the player state pawn changes.
---@param ChangedPlayerState APlayerState
---@param NewPlayerPawn APawn
---@param OldPlayerPawn APawn
function UOnsetVoipTalker:OnPlayerStatePawnSet(ChangedPlayerState, NewPlayerPawn, OldPlayerPawn) end

---Returns true if talker is enabled. See SetVoipEnabled for more information.
---@return boolean
function UOnsetVoipTalker:IsVoipEnabled() end

---Returns true if currently speaking.
---@return boolean
function UOnsetVoipTalker:IsTalking() end

---Server only: Check if this talker is muted on a voice channel id. This only works when called on the server.
---@param ChannelId integer
---@return boolean
function UOnsetVoipTalker:IsMutedOnVoiceChannel(ChannelId) end

---Server only: Returns true if this talker is muted for another talker.
---@param OtherVoipTalker UOnsetVoipTalker
---@return boolean
function UOnsetVoipTalker:IsMutedForVoipTalker(OtherVoipTalker) end

---Server only: Same as IsMutedForVoipTalker but with a player state.
---@param PlayerState APlayerState
---@return boolean
function UOnsetVoipTalker:IsMutedForPlayerState(PlayerState) end

---Returns true if this talker is muted.
---@return boolean
function UOnsetVoipTalker:IsMuted() end

---Returns true if the last received voip packet was a 2D voice. This means that we heard this talker through a voice channel we share with them.
---@return boolean
function UOnsetVoipTalker:IsLastReceivedTalkingState2D() end

---* **SERVER ONLY, do not call on client**
---*
---* Test if a player is in a specific voice channel. This only works when called on the server. Voice channel 0 is the world / 3d channel.
---* See SetVoiceChannel for more information.
---@param ChannelId integer
---@return boolean
function UOnsetVoipTalker:IsInVoiceChannel(ChannelId) end

---Get the audio component used for talking. Either 2D or 3D. Can be null if this talker has not spoken yet/did not receive any voip data yet.
---@param bAudio2D boolean
---@return UOnsetVoipAudioComponent
function UOnsetVoipTalker:GetVoiceAudioComponent(bAudio2D) end

---Gets the owning player state of this talker.
---@return APlayerState
function UOnsetVoipTalker:GetPlayerState() end

---Returns the amplitude like UOnsetVoipLocalPlayerSubsystem::GetCurrentAmplitude().
---@return number
function UOnsetVoipTalker:GetCurrentAmplitude() end

---Client/listen server only: Call this function inside any OnVoipAudioDataReceived delegate to stop the audio from being played by the plugin.
function UOnsetVoipTalker:CancelReceivedAudioData() end

