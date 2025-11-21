---@class Billboard
local Billboard = {}

---Creates a new Billboard actor with a sprite component in 3D space.
---A Billboard is a 2D sprite that always faces the camera, useful for icons, markers, and UI elements in the game world.
---@param Location FVector World position where the billboard should be spawned
---@param TexturePath string Asset path to the sprite texture, e.g. "/Game/MyTextures/MySprite.MySprite"
---@param Size FVector2D @[opt] Screen size of the sprite in pixels (default: 64×64)
---@param bScreenSpace boolean @[opt] Whether to scale billboard relative to screen space (default: false)
---@return table A wrapper table containing .Object (AActor) and .Component (UBillboardComponent)
function Billboard(Location, TexturePath, Size, bScreenSpace) end
