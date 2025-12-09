---@class HVehicle
local HVehicle = {}

---Spawns a vehicle actor from a Blueprint and sets up collision & gravity.
---@param Location FVector Spawn location
---@param Rotation FRotator Spawn rotation
---@param BlueprintAsset string Long package name for the vehicle BP, e.g. "/Game/Vehicles/BP_MyCar.BP_MyCar_C"
---@param CollisionType string One of "NoCollision", "QueryOnly", "PhysicsOnly", "QueryAndPhysics"
---@param GravityEnabled boolean Whether physics gravity is enabled
---@return table Wrapper with .Object (the actor) and .Movement
function HVehicle(Location, Rotation, BlueprintAsset, CollisionType, GravityEnabled) end

---Sets the throttle input for the vehicle.
---@param value number The throttle input value (0.0 or 1.0), like bool.
function HVehicle:SetThrottleInput(value) end

---Sets the steering input for the vehicle.
---@param value number The steering input value (-1.0 to 1.0).
function HVehicle:SetSteeringInput(value) end

---Sets the brake input for the vehicle.
---@param value number The brake input value (0.0 to 1.0).
function HVehicle:SetBrakeInput(value) end

---Sets the handbrake input for the vehicle.
---@param enabled boolean Whether to enable or disable the handbrake.
function HVehicle:SetHandBrakeInput(enabled) end

---Holds the engine starter for a specified duration.
---@param startTime number @[opt] The time to hold the starter (default is 0.0).
function HVehicle:HoldStarter(startTime) end

---Releases the engine starter.
function HVehicle:ReleaseStarter() end

---Stops the engine.
function HVehicle:StopEngine() end

---Sets the health of the engine
---@param health number The engine health value (0.0 to 1.0).
function HVehicle:SetEngineHealth(health) end

---Gets the health of the vehicle
---@return number The vehicle health value (0.0 to 1.0).
function HVehicle:GetEngineHealth() end

---Adds fuel to the vehicle's current fuel level (0.0 to 1.0).
---@param amount number The amount of fuel to add.
function HVehicle:AddFuel(amount) end

---Sets the fuel level of the vehicle (0.0 to 1.0).
---@param amount number The fuel level to set.
function HVehicle:SetFuel(amount) end

---Gets the fuel level of the vehicle (0.0 to 1.0).
---@return number The current fuel level.
function HVehicle:GetFuelRatio() end

---Returns if the vehicle is in reverse.
---@return boolean True if the vehicle is in reverse, false otherwise.
function HVehicle:IsInReverse() end

---Returns the current RPM of the vehicle (0.0 to 1.0).
---@return number The current RPM of the vehicle.
function HVehicle:GetRPMRatio() end

---Returns the number of wheels on the vehicle.
---@return number The number of wheels on the vehicle.
function HVehicle:GetNumberOfWheels() end

---Returns the number of wheels touching the ground.
---@return number The number of wheels touching the ground.
function HVehicle:GetNumberOfWheelsTouchingGround() end

---Returns the number of drive wheels touching the ground.
---@return number The number of drive wheels touching the ground.
function HVehicle:GetNumberOfDriveWheelsTouchingGround() end

---Returns the mass per wheel of the vehicle.
---@return number The mass per wheel of the vehicle.
function HVehicle:GetMassPerWheel() end

---Returns whether the vehicle is braking.
---@return boolean True if the vehicle is braking, false otherwise.
function HVehicle:IsBraking() end

---Sets whether the vehicle can sleep.
---@param enabled boolean Whether to enable or disable sleeping.
function HVehicle:SetCanSleep(enabled) end

---Sets whether the vehicle is sleeping.
---@param enabled boolean Whether to enable or disable sleeping.
function HVehicle:SetSleeping(enabled) end

---Sets whether to apply airborne physics
---@param enabled boolean Whether to enable or disable airborne physics.
function HVehicle:ApplyAirbornePhysics() end

---Returns the vehicle's setup data.
---@return UModularVehicleData The vehicle's setup data.
function HVehicle:GetSetup() end

---Returns an array of wheels on the vehicle.
---@return TArray_UModularWheel_ An array of wheels on the vehicle.
function HVehicle:GetWheels() end

---Adds wheels onto the vehicle.
---@param additionalWheels TArray_UModularWheel_ An array of additional wheels to add.
function HVehicle:UpdateComponents(additionalWheels) end

---Requests a direct move to a specified velocity.
---@param moveVelocity FVector The target velocity for the vehicle.
---@param forceMaxSpeed boolean @[opt] Whether to force the maximum speed (default is false).
function HVehicle:RequestDirectMove(moveVelocity, forceMaxSpeed) end

---Requests movement through a new move input
---@param inputVector FVector The target input vector for the vehicle.
function HVehicle:RequestPathMove(inputVector) end

---Stops applying further movement (usually zeros acceleration).
function HVehicle:StopActiveMovement() end

---Stops movement immediately (reset velocity) but keeps following current path.
function HVehicle:StopMovementKeepPathing() end

---Sets the cosmetic data on the server.
---@param data FRepCosmeticData The cosmetic data to set.
function HVehicle:SetCosmeticDataOnServer(data) end

---Returns whether the vehicle is on the ground.
---@return boolean true if the vehicle is on the ground, false otherwise.
function HVehicle:IsFlying() end

---Returns whether the vehicle is falling.
---@return boolean true if the vehicle is falling, false otherwise.
function HVehicle:IsFalling() end

---Returns whether the vehicle is moving on the ground.
---@return boolean true if the vehicle is moving on the ground, false otherwise.
function HVehicle:IsMovingOnGround() end

---Returns whether the vehicle is swimming (moving through fluid volume).
---@return boolean true if the vehicle is swimming, false otherwise.
function HVehicle:IsSwimming() end

---Returns if the vehicle is crouching.
---@return boolean true if the vehicle is crouching, false otherwise.
function HVehicle:IsCrouching() end

---Gets the current velocity of the nav agent
---@return FVector The current velocity of the nav agent.
function HVehicle:GetVelocityForNavMovement() end

---Gets the maximum speed of the nav agent.
---@return number The maximum speed for nav movement.
function HVehicle:GetMaxSpeedForNavMovement() end

---Sets the right indicator state
---@param NewState boolean New right indicator state
function HVehicle:SetRightIndicator(NewState) end

---Sets the reverse light state
---@param NewState boolean New reverse light state
function HVehicle:SetReverseLight(NewState) end

---Sets the red light intensity
---@param Value number Red light intensity value
function HVehicle:SetRedLightIntensity(Value) end

---Sets the lights emissive strength
---@param Value number Emissive strength value
function HVehicle:SetLightsEmissiveStrength(Value) end

---Sets the left indicator state
---@param NewState boolean New left indicator state
function HVehicle:SetLeftIndicator(NewState) end

---Sets the indicator lights intensity
---@param Value number Indicator lights intensity value
function HVehicle:SetIndicatorLightsIntensity(Value) end

---Sets the indicator animation speed
---@param Value number Animation speed value
function HVehicle:SetIndicatorAnimationSpeed(Value) end

---Sets the hazard light state
---@param NewState boolean New hazard light state
function HVehicle:SetHazardLight(NewState) end

---Sets the brake light state
---@param NewState boolean New brake light state
function HVehicle:SetBrakeLight(NewState) end

---Sets the siren state
---@param state boolean New siren state, if a siren is present.
function HVehicle:SetSirenState(state) end

---Sets the light emission strength
---@param Amount number Emission strength amount
function HVehicle:SetSirenEmissionStrength(Amount) end

---Sets the light red color
---@param NewColor LinearColor New red color for siren
function HVehicle:SetSirenRedColor(NewColor) end

---Sets the light blue color
---@param NewColor LinearColor New blue color for siren
function HVehicle:SetSirenBlueColor(NewColor) end

---Sets the light base color
---@param NewColor LinearColor New base color for siren
function HVehicle:SetSirenBaseColor(NewColor) end

---Sets the light animation speed
---@param Speed number Animation speed value
function HVehicle:SetSirenAnimationSpeed(Speed) end

---Sets the horn state for the vehicle
---@param state boolean Horn state
function HVehicle:Horn(state) end
