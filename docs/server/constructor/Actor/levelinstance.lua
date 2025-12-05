---@class LevelInstance
local LevelInstance = {}

---Spawns a level instance in the world at runtime
---@param Location FVector @[opt] World location (default: 0,0,0)
---@param Rotation FRotator @[opt] World rotation (default: 0,0,0)
---@param MapPath string Map asset path, e.g. "/Game/Maps/MyLevel.MyLevel"
---@param LevelName string @[opt] Unique name for tracking (default: auto-generated)
---@param bLoadAsTempPackage boolean @[opt] Load as temporary package (default: false)
---@return table LevelInstance wrapper with .Streaming (ULevelStreamingDynamic), .MapPath (string), .IsLoaded (boolean), and .IsVisible (boolean)
function LevelInstance(Location, Rotation, MapPath, LevelName, bLoadAsTempPackage) end

---Hides the level instance (keeps it loaded in memory)
function LevelInstance:Hide() end

---Shows the level instance (if it's loaded)
function LevelInstance:Show() end

---Returns whether the level instance is currently hidden
---@return boolean True if the level is hidden (loaded but not visible)
function LevelInstance:IsHidden() end

---Returns whether the level instance is currently loaded
---@return boolean True if the level is loaded in memory
function LevelInstance:IsLoaded() end

---Unloads the level instance from memory
function LevelInstance:Unload() end

---Reloads the level instance (if it was unloaded)
function LevelInstance:Reload() end

---Sets up a callback for when the level is shown/loaded
---@param Callback function Function to call when level is visible
function LevelInstance:OnShown(Callback) end

---Sets up a callback for when the level is hidden
---@param Callback function Function to call when level is hidden
function LevelInstance:OnHidden(Callback) end

---Sets up a callback for when the level is loaded
---@param Callback function Function to call when level is loaded
function LevelInstance:OnLoaded(Callback) end

---Sets up a callback for when the level is unloaded
---@param Callback function Function to call when level is unloaded
function LevelInstance:OnUnloaded(Callback) end
