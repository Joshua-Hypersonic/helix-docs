---@class StaticMesh
---@param Location FVector World position
---@param Rotation FRotator World rotation
---@param MeshPath string Package path to UStaticMesh
---@param CollType enum CollisionType
---@param bStationary boolean Lock mobility to Stationary
---@param bReplicate boolean Enable replication
---@return table Wrapper with .Object and .Component
function StaticMesh(Location, Rotation, MeshPath, CollType, bStationary, bReplicate) end
