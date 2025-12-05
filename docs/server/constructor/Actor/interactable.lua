---@class Interactable
local Interactable = {}

---Creates a new Interactable actor in the world with interaction options
---@param Options table Array of interaction option tables, each containing: {Text: string, SubText: string @[opt], Ability: UClass @[opt], Input: string|UInputAction @[opt], Action: function}
---@param StaticMeshPath string @[opt] Long package name for the interactable's mesh, e.g. "/Game/Meshes/Crate.Crate"
---@param Transform FTransform @[opt] World transform for the interactable (default: origin)
---@return table Interactable wrapper with .Object (AHInteractableActor) and .Callbacks table
---@usage local crate = Interactable({{Text = "Open", SubText = "Press E", Action = function(target, instigator) print("Opened!") end}}, "/Game/Meshes/Crate.Crate", transform)
function Interactable(Options, StaticMeshPath, Transform) end
