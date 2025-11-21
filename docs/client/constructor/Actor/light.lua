---@class Light
local Light = {}

---Spawns a new light actor and wraps its component.
---All component methods/properties are available directly on the wrapper.
---@param Location FVector @[opt] World position (default: 0,0,0)
---@param Rotation FRotator @[opt] World orientation (default: 0,0,0)
---@param Color FLinearColor @[opt] Light color and opacity (default: white opaque)
---@param LightTypeParam string @[opt] One of LightType.Spot, .Point, .Rect (default: Point)
---@param Intensity number @[opt] Light intensity (default: 5000)
---@param AttenuationRadius number @[opt] Radius for attenuation (Point & Spot only, default: 1000)
---@param ConeAngle number @[opt] Outer cone angle for spot lights (Spot only, default: 44)
---@param InnerConePercent number @[opt] Inner cone percent (Spot only, 0-1, default: 0)
---@param MaxDrawDistance number @[opt] Max draw distance (0 = infinite, default: 0)
---@param UseInverseSquaredFalloff boolean @[opt] Use inverse squared falloff (default: true)
---@param CastShadows boolean @[opt] Whether the light casts shadows (default: true)
---@param Visible boolean @[opt] Whether the light is visible in game (default: true)
---@return table Wrapper with .Object (AActor) and .Component (ULightComponent)
function Light(Location, Rotation, Color, LightTypeParam, Intensity, AttenuationRadius, ConeAngle, InnerConePercent, MaxDrawDistance, UseInverseSquaredFalloff, CastShadows, Visible) end
