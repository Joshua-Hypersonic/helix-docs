---@class Door
local Door = {}

---Door type enumeration for easy spawning without requiring a static mesh
---@class DoorType
---@field Classic number Classic door style (value: 1)
---@field Swinging number Swinging door style (value: 2)
---@field Sliding number Sliding door style (value: 3)
---@field Garage number Garage door style using sliding class (value: 4)

---Creates a new Door actor in the world
---@param DoorType DoorType Type of door to spawn (DoorType.Classic, DoorType.Swinging, DoorType.Sliding, DoorType.Garage)
---@param Transform FTransform World transform for the door
---@param StaticMesh string @[opt] Long package name for custom door mesh, e.g. "/Game/Meshes/MyDoor.MyDoor"
---@param DoorProperties table @[opt] Table of door properties to apply (default: nil)
---@return table Door wrapper with .Object (ADoor)
function Door(DoorType, Transform, StaticMesh, DoorProperties) end

---Sets the static mesh for the door
---@param StaticMesh string Long package name for door mesh, e.g. "/Game/Meshes/MyDoor.MyDoor"
function Door:SetStaticMesh(StaticMesh) end
