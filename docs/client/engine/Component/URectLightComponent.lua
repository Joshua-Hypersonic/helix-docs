---A light component which emits light from a rectangle.
---@class URectLightComponent : ULocalLightComponent
---@field public SourceWidth number @Width of light source rect. Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.
---@field public SourceHeight number @Height of light source rect. Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.
---@field public BarnDoorAngle number @Angle of barn door attached to the light source rect.
---@field public BarnDoorLength number @Length of barn door attached to the light source rect.
---@field public LightFunctionConeAngle number @Aperture of cone angle for the perspective projection of the light function material. If 0, an orthographic projection is used instead.
---@field public SourceTexture UTexture @Texture mapped to the light source rectangle
local URectLightComponent = {}

---@param NewValue number
function URectLightComponent:SetSourceWidth(NewValue) end

---@param NewValue UTexture
function URectLightComponent:SetSourceTexture(NewValue) end

---@param NewValue number
function URectLightComponent:SetSourceHeight(NewValue) end

---@param NewValue number
function URectLightComponent:SetBarnDoorLength(NewValue) end

---@param NewValue number
function URectLightComponent:SetBarnDoorAngle(NewValue) end
