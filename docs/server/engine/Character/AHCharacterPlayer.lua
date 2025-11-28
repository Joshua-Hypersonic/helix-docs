---@class AHCharacterPlayer : AHCharacter
---@field public CameraComponent ULyraCameraComponent
local AHCharacterPlayer = {}

---@param bIsFirstPerson boolean
function AHCharacterPlayer:OnCameraViewModeChanged(bIsFirstPerson) end

---Call from a Cue handler event to continue checking for additional, more generic handlers. Called from the ability system blueprint library
function AHCharacterPlayer:ForwardGameplayCueToParent() end

---Internal function to map ufunctions directly to gameplaycue tags
---@param EventType integer
---@param Parameters FGameplayCueParameters
function AHCharacterPlayer:BlueprintCustomHandler(EventType, Parameters) end

---Check if the asset has a gameplay tag that matches against the specified tag (expands to include parents of asset tags)
---@param TagToCheck FGameplayTag
---@return boolean
function AHCharacterPlayer:HasMatchingGameplayTag(TagToCheck) end

---Check if the asset has gameplay tags that matches against any of the specified tags (expands to include parents of asset tags)
---@param TagContainer FGameplayTagContainer
---@return boolean
function AHCharacterPlayer:HasAnyMatchingGameplayTags(TagContainer) end

---Check if the asset has gameplay tags that matches against all of the specified tags (expands to include parents of asset tags)
---@param TagContainer FGameplayTagContainer
---@return boolean
function AHCharacterPlayer:HasAllMatchingGameplayTags(TagContainer) end

---Gets the owned gameplay tags for the asset.  Exposed to allow redirects of existing GetOwnedGameplayTags calls.  In Blueprints, new nodes will use BlueprintGameplayTagLibrary's version.
---@return FGameplayTagContainer
function AHCharacterPlayer:BP_GetOwnedGameplayTags() end

---
---@param Faction FFaction
function AHCharacterPlayer:EventSetFaction(Faction) end

---
---@param OutFaction FFaction @[out] 
function AHCharacterPlayer:EventGetFaction(OutFaction) end

---Called when a change is made on cosmetics of the character and meshes are fully loaded
---@param BodyMeshComponent USkeletalMeshComponent
---@param HeadMeshComponent USkeletalMeshComponent
function AHCharacterPlayer:OnCosmeticsUpdated(BodyMeshComponent, HeadMeshComponent) end

---Called when this character is initialized with a cosmetics system for the first time
---@param CosmeticsSystem TScriptInterface_UHCosmeticsSystem_
function AHCharacterPlayer:OnCosmeticsSystemAdded(CosmeticsSystem) end

---Returns true if the character is currently in first person view mode
---@return boolean
function AHCharacterPlayer:IsFirstPersonViewMode() end

---Returns default cosmetics preset to use for this character during initial mesh generation, if any exists. Mostly applicable for NPCs to define their look
---@param DefaultPreset FHCharacterCosmeticsPreset @[out] 
---@return boolean
function AHCharacterPlayer:GetDefaultCharacterCosmeticsPreset(DefaultPreset) end

---Get cosmetics system for this character
---@return TScriptInterface_UHCosmeticsSystem_
function AHCharacterPlayer:GetCosmeticsSystem() end

---Return base gameplay mesh of character, which will be used as animation retarget source / leader pose for generated cosmetics
---@return USkeletalMeshComponent
function AHCharacterPlayer:GetCharacterBaseMesh() end

---Returns the gameplay skeletal mesh asset to use for gender
---@param Gender EHCharacterCosmeticsGender
---@return USkeletalMesh
function AHCharacterPlayer:GetBaseSkeletalMeshAssetForGender(Gender) end

---Returns the gameplay skeletal mesh physics asset to use for cosmetics
---@return UPhysicsAsset
function AHCharacterPlayer:GetBasePhysicsAsset() end

---return a Lua file path which is relative to project's 'Content/Script', for example 'Weapon.BP_DefaultProjectile_C'
---@return string
function AHCharacterPlayer:GetModuleName() end

