---Subsystem based on a local player. Handles our own local voice capturing and processing.
---@class UOnsetVoipLocalPlayerSubsystem : ULocalPlayerSubsystem
---@field public OnVoipTalkingStateChange MulticastDelegate @Called when we start or stop talking.
---@field private LoopbackAudioComponent UAudioComponent
---@field private LoopbackSoundWave UOnsetVoipSoundWave
---@field public OnVOIPMethodChange MulticastDelegate @0 Push 1 auto 2 disabled
local UOnsetVoipLocalPlayerSubsystem = {}

---Please refer to ToggleVoiceCaptureWithChannel for an explanation. This function takes multiple voice channel ids.
---@param bCapture boolean
---@param VoiceChannelIds TArray_integer_
---@return boolean
function UOnsetVoipLocalPlayerSubsystem:ToggleVoiceCaptureWithChannels(bCapture, VoiceChannelIds) end

---* Same as ToggleVoiceCapture but takes a voice channel id which hints the server that we would like to talk on a specific channel.
---* The talker/player must be set in the channel with UOnsetVoipTalker::SetVoiceChannel on the server first.
---* Each call to ToggleVoiceCapture* will reset the capture channels set in a previous call.
---@param bCapture boolean
---@param VoiceChannelId integer
---@return boolean
function UOnsetVoipLocalPlayerSubsystem:ToggleVoiceCaptureWithChannel(bCapture, VoiceChannelId) end

---Starts or stops voice capture on our microphone. This will make us speak on all channels we are part of on the server.
---@param bCapture boolean
---@return boolean
function UOnsetVoipLocalPlayerSubsystem:ToggleVoiceCapture(bCapture) end

---Plays our own microphone audio. Voice capture must be enabled (ToggleVoiceCapture).
---@param bLoopback boolean
function UOnsetVoipLocalPlayerSubsystem:ToggleLoopback(bLoopback) end

---Stop recording. Returns false if not recording.
---@return boolean
function UOnsetVoipLocalPlayerSubsystem:StopRecording() end

---Start recording the local microphone.
---       * Filename: If empty a file will be generated.
---       * Return false if recording is already running or failed to start recording.
---@param Filename string
---@param RecordingFormat EOnsetAudioRecordingFormat
---@return boolean
function UOnsetVoipLocalPlayerSubsystem:StartRecording(Filename, RecordingFormat) end

---@param bIsTalking boolean
function UOnsetVoipLocalPlayerSubsystem:OnVoipTalkingStateChange__DelegateSignature(bIsTalking) end

---Returns true if our voice capture is enabled and the microphone detected voice recently.
---@return boolean
function UOnsetVoipLocalPlayerSubsystem:IsTalking() end

---Returns true if currently recording.
---@return boolean
function UOnsetVoipLocalPlayerSubsystem:IsRecording() end

---See ToggleLoopback()
---@return boolean
function UOnsetVoipLocalPlayerSubsystem:IsLoopbackEnabled() end

---Returns true if our voice capture is enabled. To check if we actually talk use IsTalking().
---@return boolean
function UOnsetVoipLocalPlayerSubsystem:IsCapturingVoice() end

---Returns the directory + filename recording to.
---@return string
function UOnsetVoipLocalPlayerSubsystem:GetRecordingFile() end

---The current loudness of the microphone between 0.0 and 1.0, returns -1.0 if this function is not supported by the current platform. Currently this is only supported on Windows. Not affected by cvar voice.MicInputGain2.
---@return number
function UOnsetVoipLocalPlayerSubsystem:GetCurrentAmplitude() end

---Change the input device used for capturing our voice.
---@param DeviceName string
---@return boolean
function UOnsetVoipLocalPlayerSubsystem:ChangeVoiceCaptureDevice(DeviceName) end

