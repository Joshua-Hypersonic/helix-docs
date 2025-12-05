---@class Xray

---@param cb fun(Instigator: AHPlayerController, Target: AActor, State: XrayState)
---@return boolean
function Xray.RegisterListener(cb) end

---@param Actor AActor
---@param cb fun(Instigator: AHPlayerController, Target: AActor, State: XrayState)
---@return UHXRayTargetActorComponent
function Xray.RegisterActor(Actor, cb) end
