---A procedural sound wave which is used to play voice data for a UOnsetVoipAudioComponent.
---@class UOnsetVoipSoundWave : USoundWaveProcedural
local UOnsetVoipSoundWave = {}

---@param NumSamples integer
function UOnsetVoipSoundWave:SetNumSamplesPerChunk(NumSamples) end

---Set sound attenuation.
---@param Attenuation USoundAttenuation
function UOnsetVoipSoundWave:SetAttenuation(Attenuation) end

---Resets audio data that is queued to be sent to the procedural sound wave.
function UOnsetVoipSoundWave:ResetAudioBuffer() end

---Current size of the audio buffer pending to be queued.
---@return integer
function UOnsetVoipSoundWave:GetAudioBufferSize() end

---Get sound attenuation.
---@return USoundAttenuation
function UOnsetVoipSoundWave:GetAttenuation() end

---Blueprint version for adding new audio data to this procedural audio wave.
---@param InAudioData TArray_integer_
function UOnsetVoipSoundWave:AddAudioData(InAudioData) end

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UOnsetVoipSoundWave:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UOnsetVoipSoundWave:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UOnsetVoipSoundWave:AddAssetUserDataOfClass(InUserDataClass) end

