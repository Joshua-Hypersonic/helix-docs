---@class AHAIController : AAIController
---@field protected bLogicShutDown boolean
local AHAIController = {}

---Shuts down most of AI functionality (BT, controller focus, movement etc.) but keeps controller functional. Use when you need to temporarily stop AI functionality
---@param Reason string
---@param bStopActiveMovement boolean @[opt] 
---@param bDisablePerception boolean @[opt] 
---@param bClearFocus boolean @[opt] 
function AHAIController:ShutdownLogic(Reason, bStopActiveMovement, bDisablePerception, bClearFocus) end

---Restarts BT execution
function AHAIController:RestartLogic() end

---@return UHNPCPawnData
function AHAIController:GetAIPawnData() end

---
---@param Faction FFaction
function AHAIController:EventSetFaction(Faction) end

---
---@param OutFaction FFaction @[out] 
function AHAIController:EventGetFaction(OutFaction) end

---return a Lua file path which is relative to project's 'Content/Script', for example 'Weapon.BP_DefaultProjectile_C'
---@return string
function AHAIController:GetModuleName() end

