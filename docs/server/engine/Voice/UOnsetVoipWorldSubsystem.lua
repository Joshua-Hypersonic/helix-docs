---Subsystem managing UOnsetVoipTalker which are remote players.
---@class UOnsetVoipWorldSubsystem : UWorldSubsystem
---@field public OnVoipTalkingStateChange MulticastDelegate @Called when any voip talker starts or stops talking.
---@field public OnVoipTalkerCreated MulticastDelegate @Called when a new instance of OnsetVoipTalker is created. (Player joined)
---@field public OnVoipTalkerDestroyed MulticastDelegate @Called when an instance of OnsetVoipTalker is destroyed. (Player left)
---@field public OnVoipAudioDataReceived MulticastDelegate @See UOnsetVoipTalker::OnVoipAudioDataReceived.
---@field private VoipTalkers TMap<APlayerState, UOnsetVoipTalker> @Map holding the voip talker for each corresponding player state. Player state is a strong reference here. Upon actor destroy of the player state the voip talker will be destroyed as well.
---@field private OnsetVoipTalkerClass TSubclassOf<UObject> @See UOnsetVoipSettings::DefaultOnsetVoipTalkerClass
local UOnsetVoipWorldSubsystem = {}

---Called by the timer to update all voip talkers.
function UOnsetVoipWorldSubsystem:UpdateVoipTalkers() end

---Stop recording. Returns false if not recording.
---@return boolean
function UOnsetVoipWorldSubsystem:StopRecording() end

---Start recording remote talkers to an audio file.
---       * Filename: If empty a file will be generated.
---       * bMixToSingleFile: If true will mix all audio data to a single file instead of recording each remote talker to a separate file.
---       * Return false if recording is already running or failed to start recording.
---       * To enable this on a dedicated server see OnsetVoip.Build.cs file.
---@param Filename string
---@param RecordingFormat EOnsetAudioRecordingFormat
---@param bMixToSingleFile boolean
---@return boolean
function UOnsetVoipWorldSubsystem:StartRecording(Filename, RecordingFormat, bMixToSingleFile) end

---@param VoipTalker UOnsetVoipTalker
function UOnsetVoipWorldSubsystem:OnVoipTalkerCreatedOrDestroyed__DelegateSignature(VoipTalker) end

---Returns true if currently recording.
---@return boolean
function UOnsetVoipWorldSubsystem:IsRecording() end

---Gets the voip talker for a specific player state.
---@param PlayerState APlayerState
---@return UOnsetVoipTalker
function UOnsetVoipWorldSubsystem:GetVoipTalker(PlayerState) end

---Returns the directory we are recording to. If this is a single file recording then it will return the directory + filename.
---@return string
function UOnsetVoipWorldSubsystem:GetRecordingFile() end

---Gets an array of all voip talkers in a specific voice channel.
---@param ChannelId integer
---@return TArray_UOnsetVoipTalker_
function UOnsetVoipWorldSubsystem:GetAllTalkersInVoiceChannel(ChannelId) end

---Gets an array of all voip talkers.
---@return TArray_UOnsetVoipTalker_
function UOnsetVoipWorldSubsystem:GetAllTalkers() end

