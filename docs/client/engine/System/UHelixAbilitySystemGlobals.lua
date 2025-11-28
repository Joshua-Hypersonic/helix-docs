---Global functions related to gameplay ability system and abilities
---@class UHelixAbilitySystemGlobals : UBlueprintFunctionLibrary
local UHelixAbilitySystemGlobals = {}

---Stop playing custom animation asset on target actor, if there is any
---@param TargetActor AActor
function UHelixAbilitySystemGlobals.StopCustomAnimationOnActor(TargetActor) end

---Trigger a traversal action on target actor with provided data
---@param TraversingActor AActor
---@param TraversalCheckResult FHelixTraversalCheckResult
---@param IgnoredActors TArray_AActor_
---@return boolean
function UHelixAbilitySystemGlobals.SendTraversalEventToActor(TraversingActor, TraversalCheckResult, IgnoredActors) end

---Triggers a character land action with provided data
---@param FallingActor AActor
---@param FallVelocity FVector
---@return boolean
function UHelixAbilitySystemGlobals.SendLandGameplayEventToActor(FallingActor, FallVelocity) end

---
---@param TargetActor AHCharacter
---@param Params FHExitVehicleParams @[opt] 
---@return boolean
function UHelixAbilitySystemGlobals.SendExitVehicleEventToActor(TargetActor, Params) end

---
---@param TargetActor AHCharacter
---@param Vehicle ABaseCosmeticVehicle
---@param Seat USeatComponent
---@param Params FHEnterVehicleParams @[opt] 
---@return boolean
function UHelixAbilitySystemGlobals.SendEnterVehicleEventToActorBySeat(TargetActor, Vehicle, Seat, Params) end

---
---@param TargetActor AHCharacter
---@param Vehicle ABaseCosmeticVehicle
---@param Door USimpleVehicleDoorComponent
---@param Params FHEnterVehicleParams @[opt] 
---@return boolean
function UHelixAbilitySystemGlobals.SendEnterVehicleEventToActorByDoor(TargetActor, Vehicle, Door, Params) end

---
---@param TargetActor AHCharacter
---@param Vehicle ABaseCosmeticVehicle
---@param DoorIndex integer @[opt] 
---@param Params FHEnterVehicleParams @[opt] 
---@return boolean
function UHelixAbilitySystemGlobals.SendEnterVehicleEventToActor(TargetActor, Vehicle, DoorIndex, Params) end

---Plays provided animation asset on target actor with specified params. Returns true if animation started playing
---@param TargetActor AActor
---@param AnimationAsset UAnimSequenceBase
---@param PlayAnimParams FHelixPlayAnimParams
---@param OnEnded Delegate
---@return boolean
function UHelixAbilitySystemGlobals.PlayCustomAnimationOnActor(TargetActor, AnimationAsset, PlayAnimParams, OnEnded) end

---@param DamageInstigator AActor
---@param DamageCauser AActor
---@return FGameplayEffectContextHandle
function UHelixAbilitySystemGlobals.MakeDamageEffectContextFromInstigator(DamageInstigator, DamageCauser) end

---Extract traversal check result from gameplay event target data
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index integer
---@param OutTraversalCheckResult FHelixTraversalCheckResult @[out] 
---@return boolean
function UHelixAbilitySystemGlobals.GetTraversalCheckResultFromTargetData(TargetData, Index, OutTraversalCheckResult) end

---Extract play anim params from gameplay event target data
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index integer
---@param OutPlayAnimParams FHelixPlayAnimParams @[out] 
---@return boolean
function UHelixAbilitySystemGlobals.GetPlayAnimParamsFromTargetData(TargetData, Index, OutPlayAnimParams) end

---Extract exişt vehicle params from gameplay event target data
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index integer
---@param OutExitVehicleParams FHExitVehicleParams @[out] 
---@return boolean
function UHelixAbilitySystemGlobals.GetExitVehicleParamsFromTargetData(TargetData, Index, OutExitVehicleParams) end

---Extract enter vehicle params from gameplay event target data
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index integer
---@param OutEnterVehicleParams FHEnterVehicleParams @[out] 
---@return boolean
function UHelixAbilitySystemGlobals.GetEnterVehicleParamsFromTargetData(TargetData, Index, OutEnterVehicleParams) end

---Extract custom hit data from gameplay event target data
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index integer
---@param OutDamageType FGameplayTagContainer @[out] 
---@param OutHitImpulse FVector @[out] 
---@return boolean
function UHelixAbilitySystemGlobals.GetCustomHitDataFromTargetData(TargetData, Index, OutDamageType, OutHitImpulse) end

