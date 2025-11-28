---@class UBaseSiren : UAttachmentComponent
---@field private Name_BlueSlot string
---@field private Name_RedSlot string
---@field private Name_IsOn string
---@field private Name_BaseColor string
---@field private Name_RedColor string
---@field private Name_BlueColor string
---@field private Name_EmissionStrength string
---@field private Name_IsBlueLight string
---@field private Name_AnimationSpeed string
---@field protected Siren_DMIs TArray<UMaterialInstanceDynamic>
---@field public bSirenOn boolean
---@field public BaseLightColor FLinearColor
---@field public BlueLightColor FLinearColor
---@field public RedLightColor FLinearColor
---@field public EmissionStrength number
---@field public SirenAnimationSpeed number
---@field public LightMaterial UMaterialInterface
local UBaseSiren = {}

---gets all material checks if slot name contains Name_BlueSlot or Name_redSlot and creates Dynamic material Of LightMaterial if its Name_Blue also Apply parameter Name_IsBlueLight to 1 if not 0
function UBaseSiren:SetupSirenDMIs() end

---@param bOn boolean
function UBaseSiren:SetSirenState(bOn) end

---@param NewColor FLinearColor
function UBaseSiren:SetSirenRedColor(NewColor) end

---@param Amount number
function UBaseSiren:SetSirenEmissionStrength(Amount) end

---@param NewColor FLinearColor
function UBaseSiren:SetSirenBlueColor(NewColor) end

---@param NewColor FLinearColor
function UBaseSiren:SetSirenBaseColor(NewColor) end

---@param Speed number
function UBaseSiren:SetSirenAnimationSpeed(Speed) end

---@param NewChange boolean
function UBaseSiren:OnSirenChange(NewChange) end

---apply all Config values on DMI
---@param DMI UMaterialInstanceDynamic
function UBaseSiren:ApplyConfigOnDMI(DMI) end

---@return UVehiclePartDataInstance
function UBaseSiren:GetVehiclePartDataInstance() end

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UBaseSiren:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UBaseSiren:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UBaseSiren:AddAssetUserDataOfClass(InUserDataClass) end

