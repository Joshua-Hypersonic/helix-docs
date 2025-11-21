---@class Decal
local Decal = {}

---Creates a new Decal actor in the world
---@param Location FVector World position
---@param Rotation FRotator World orientation
---@param MaterialAsset string Long package name, e.g. "/Game/Decals/MyDecalMat.MyDecalMat"
---@param Size FVector @[opt] Decal size (default: 128×256×256)
---@param Lifespan number @[opt] Seconds to live (default: 60)
---@param FadeScreenSize number @[opt] Screen-size at which it fades (default: 0.01)
---@return table Wrapper with .Object (AActor) and .Component (UDecalComponent)
function Decal(Location, Rotation, MaterialAsset, Size, Lifespan, FadeScreenSize) end
