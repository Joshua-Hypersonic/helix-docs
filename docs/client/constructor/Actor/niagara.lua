---@class NiagaraParticle
local NiagaraParticle = {}

---Spawns a Niagara particle system in the world
---@param Location FVector @[opt] World location (default: 0,0,0)
---@param Rotation FRotator @[opt] World rotation (default: 0,0,0)
---@param AssetPath string Asset path, e.g. "/Game/MyNiagara/MySys.MySys"
---@param bAutoDestroy boolean @[opt] Auto-destroy on finish (default: true)
---@param Scale FVector @[opt] Scale (default: 1,1,1)
---@param bAutoActivate boolean @[opt] Auto-activate (default: true)
---@param PoolingMethod ENCPoolMethod @[opt] Niagara pooling method (default: None)
---@param bPreCullCheck boolean @[opt] Pre-cull check (default: false)
---@return table NiagaraParticle wrapper with .Component (UNiagaraComponent)
function NiagaraParticle(Location, Rotation, AssetPath, bAutoDestroy, Scale, bAutoActivate, PoolingMethod, bPreCullCheck) end
