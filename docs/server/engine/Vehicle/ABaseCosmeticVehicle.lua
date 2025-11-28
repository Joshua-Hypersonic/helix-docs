---@class ABaseCosmeticVehicle : APawn
---@field public CheckVehicleFlipAngleThreshold number @The angle in degrees from the world up vector the vehicle is considered flipped
---@field public CheckVehicleFlipTraceDistance number @How far down to trace from the vehicle's center to find the ground surface.
---@field public EngineStartDelay number
---@field public VehicleControlsMainInputMappingContext TSoftObjectPtr<UInputMappingContext> @Main IMC for this vehicle's controls
---@field public VehicleLightManager UVehicleLightManager
---@field public OnVehicleDoorOpen MulticastDelegate @eof
---@field public OnVehicleDoorClose MulticastDelegate
---@field public OnVehicleEngineStart MulticastDelegate
---@field public OnVehicleEngineStop MulticastDelegate
---@field public OnPlayerEnterVehicle MulticastDelegate
---@field public OnPlayerExitVehicle MulticastDelegate
---@field public VehicleCollisionDetectionThreshold number
---@field public EngineLocation FVector
---@field public SteeringComponent USteeringComponent
---@field public DriverSeatVisualizerMesh TSoftObjectPtr<UStaticMesh>
---@field public PassengerSeatVisualizerMesh TSoftObjectPtr<UStaticMesh>
---@field public CurrentCoreMeshImpact number @Impacts
---@field public WheelsDmiMap TMap<integer, UMaterialInstanceDynamic>
---@field public PassangerCameraOffset FVector
---@field public IsDead boolean
---@field private ReplicatedAbilitySystemComponent ULyraAbilitySystemComponent
---@field public AbilitySystemComponent ULyraAbilitySystemComponent @The ability system component for this actor
---@field public AbilitySystemComponentClass TSubclassOf<ULyraAbilitySystemComponent>
---@field public AbilitySetOnSpawn ULyraAbilitySet
---@field public HealthComponent ULyraHealthComponent @Lyra "Health Component" is a convenience interface for HealthSet This requires the HealthSet and plugs into its event handlers. This makes it easier to respond to these events in BPs, for example. This component also seems to be what is responsible for handling the death of an Actor via network replication.
---@field public DamageComponent UVehicleDamageComponent
---@field public Option FInteractionOption @Interact
---@field public InteractionPromptOffset FVector @OptionalOffset to add to InteractionPrompt Location (in world space)
---@field protected VehicleType EHelixVehicleType
---@field protected VehicleCameraModeClass TSoftClassPtr<UHCameraMode>
---@field protected FallBackInteractionClass TSoftClassPtr<UGameplayAbility> @for CK
---@field protected FallbackInteractionInput TSoftObjectPtr<UInputAction>
---@field protected DamageEffectClass TSoftClassPtr<UDamageEffectComponent> @Set to none if your vehicle doesn't need damage effect (Explosion , glass etc ...)
---@field protected DamageEffectComponent UDamageEffectComponent
---@field protected BreakableParts TArray<FBreakablePartConfig>
---@field protected PartDamageAccumulation TMap<UStaticMeshComponent, number> @UPROPERTY(EditAnywhere, Replicated, Category = "DamageGlass") TArray<FBreakablePartGlassConfig> BreakablePartsGlass;
---@field protected LoadedCameraMode TSubclassOf<UHCameraMode>
---@field protected AbilityADS TSubclassOf<UAbility_Vehicle_ADS>
---@field public AllowVehicleImpactDamage boolean
---@field public ImpactForceRange FVector2D
---@field public AppliedDamageRange FVector2D
---@field public ImpactDamageCooldown number
---@field public DamageOnCooldown boolean
---@field public OnImpactDamage MulticastDelegate
---@field public TargetCameraDistance number
---@field public CameraOffset FVector
---@field public TargetCameraOffset FVector
---@field public ArmLenMultiplier number
---@field public FOVMultiplier number
---@field private RestPositionOffset FTransform @We only read and write this from CDO
---@field private PlateNumber string
local ABaseCosmeticVehicle = {}

function ABaseCosmeticVehicle:ToggleDebugDraw() end

---@param NewController AController
function ABaseCosmeticVehicle:TakeOwnership(NewController) end

---@return boolean
function ABaseCosmeticVehicle:ShouldPriortizeDriverSeat() end

---@param Wheelindex integer
---@param NewState EWheelState
function ABaseCosmeticVehicle:SetWheelState(Wheelindex, NewState) end

---@param NewHealthState number
function ABaseCosmeticVehicle:SetVehicleHealthState(NewHealthState) end

function ABaseCosmeticVehicle:SetSeatInInteractionComponent() end

function ABaseCosmeticVehicle:SetSeatComponentVisualizer() end

---Plate
---@param In string
function ABaseCosmeticVehicle:SetPlate(In) end

---@param NewOffset FVector
function ABaseCosmeticVehicle:SetCameraOffset(NewOffset) end

---@param Wheelindex integer
---@param NewState EWheelState
function ABaseCosmeticVehicle:Server_SetWheelState(Wheelindex, NewState) end

---@param Impact FVector
function ABaseCosmeticVehicle:PlayHitSound(Impact) end

---@param Close boolean
function ABaseCosmeticVehicle:PlayDoorSound(Close) end

---@param WheelIndex integer
---@param InBaseTireRadius number
---@param InFlatTireRadius number
function ABaseCosmeticVehicle:OnWheelRadiusUpdate(WheelIndex, InBaseTireRadius, InFlatTireRadius) end

---@param NewController AController
function ABaseCosmeticVehicle:OnTakeOwnership(NewController) end

function ABaseCosmeticVehicle:OnRep_ReplicatedAbilitySystemComponent() end

---@param HitComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function ABaseCosmeticVehicle:OnHitCallback(HitComp, OtherActor, OtherComp, NormalImpulse, Hit) end

function ABaseCosmeticVehicle:OnDeath() end

function ABaseCosmeticVehicle:OnCameraModeLoaded() end

---@param PartIndex integer
---@param HitLocation FVector
function ABaseCosmeticVehicle:Multicast_OpenPart(PartIndex, HitLocation) end

---@param PartIndex integer
---@param ImpulseDir FVector
---@param HitLocation FVector
---@param Config FBreakablePartConfig
function ABaseCosmeticVehicle:Multicast_DetachPart(PartIndex, ImpulseDir, HitLocation, Config) end

function ABaseCosmeticVehicle:LoadAbilitySystem() end

---@param Interactor APawn
---@return boolean
function ABaseCosmeticVehicle:IsPlayerAllowedToInteract(Interactor) end

---@return boolean
function ABaseCosmeticVehicle:IsFlipped() end

---@param bHorn boolean
---@param bWasNetworkCalled boolean @[opt] 
function ABaseCosmeticVehicle:Horn(bHorn, bWasNetworkCalled) end

---@param ActionValue FInputActionValue
function ABaseCosmeticVehicle:HeadLightBinding(ActionValue) end

---Special vehicle action such as siren or Smoke
---@param Pressed boolean
---@param ActionID integer
function ABaseCosmeticVehicle:HandleVehicleSpecialAction(Pressed, ActionID) end

---@param DamageAmount number
---@param Hit FHitResult
function ABaseCosmeticVehicle:HandlePartDamage(DamageAmount, Hit) end

---Handle fire for tanks
---@param Pressed boolean
function ABaseCosmeticVehicle:HandleFire(Pressed) end

function ABaseCosmeticVehicle:HandleDeath() end

---@param Pressed boolean
function ABaseCosmeticVehicle:HandleAim(Pressed) end

---@return EHelixVehicleType
function ABaseCosmeticVehicle:GetVehicleType() end

---@return number
function ABaseCosmeticVehicle:GetVehicleProxyRadius() end

---@return FVector
function ABaseCosmeticVehicle:GetVehicleCameraPivotRelativeLocation() end

---@return FVector
function ABaseCosmeticVehicle:GetVehicleCameraOffset() end

---@return TSubclassOf_UHCameraMode_
function ABaseCosmeticVehicle:GetVehicleCameraMode() end

---@return boolean
function ABaseCosmeticVehicle:GetUseLockedCameraView() end

---@return integer
function ABaseCosmeticVehicle:GetTotalOccupiedSeats() end

---@return number
function ABaseCosmeticVehicle:GetTargetFOV() end

---@param HandLocationOffset FVector
---@param HandRotationOffset FRotator
---@param OutHandPositions FHelixSteeringWheelHandPositions @[out] 
---@return boolean
function ABaseCosmeticVehicle:GetSteeringWheelHandPositions(HandLocationOffset, HandRotationOffset, OutHandPositions) end

---@return TArray_string_
function ABaseCosmeticVehicle:GetStaticMeshNames() end

---return -1 if seat is not found
---@param Pawn APawn
---@return integer
function ABaseCosmeticVehicle:GetSeatFromPawn(Pawn) end

---If multi seat is on index is ignored and first free seat is returned
---@param SeatIndex integer
---@param MultiSeat boolean
---@return USeatComponent
function ABaseCosmeticVehicle:GetSeatComponent(SeatIndex, MultiSeat) end

---Driver 0 Passenger 1 Rear Left 2 Rear Right 3
---@param Index integer
---@return USeatComponent
function ABaseCosmeticVehicle:GetSeatByIndex(Index) end

---@return string
function ABaseCosmeticVehicle:GetPlate() end

---@param SeatIndex integer
---@return APawn
function ABaseCosmeticVehicle:GetPawnFromSeat(SeatIndex) end

---@return FVector
function ABaseCosmeticVehicle:GetPassangerCameraOffset() end

---For example tank weapons
---@return UInputMappingContext
function ABaseCosmeticVehicle:GetOptionalIMC() end

---@return ULyraAbilitySystemComponent
function ABaseCosmeticVehicle:GetLyraAbilitySystemComponent() end

---Driver 0 Passenger 1 Rear Left 2 Rear Right 3
---@param Index integer
---@return USimpleVehicleDoorComponent
function ABaseCosmeticVehicle:GetDoorByIndex(Index) end

---To Keep current BP Structure
---@return UDamageEffectComponent
function ABaseCosmeticVehicle:GetDamageEffectComponent() end

---@param Name string
---@return UActorComponent
function ABaseCosmeticVehicle:GetComponentByName(Name) end

---@param Actor AActor
---@return USimpleVehicleDoorComponent
function ABaseCosmeticVehicle:GetClosestDoorToActor(Actor) end

---@param InClass TSubclassOf_UObject_
---@return FVector
function ABaseCosmeticVehicle.GetClassDefaultScale(InClass) end

---Defers spawning of a cosmetic vehicle to optimize performance
---@param WorldContextObject UObject
---@param VehicleClass TSubclassOf_ABaseCosmeticVehicle_
---@param InSpawnTransform FTransform
---@param InOwner AActor @[opt] 
---@return ABaseCosmeticVehicle
function ABaseCosmeticVehicle.DeferSpawnCosmeticVehicle(WorldContextObject, VehicleClass, InSpawnTransform, InOwner) end

---@return number
function ABaseCosmeticVehicle:CalculateTargetFOV() end

---@return boolean
function ABaseCosmeticVehicle:AnySeatEmpty() end

---Check if the asset has a gameplay tag that matches against the specified tag (expands to include parents of asset tags)
---@param TagToCheck FGameplayTag
---@return boolean
function ABaseCosmeticVehicle:HasMatchingGameplayTag(TagToCheck) end

---Check if the asset has gameplay tags that matches against any of the specified tags (expands to include parents of asset tags)
---@param TagContainer FGameplayTagContainer
---@return boolean
function ABaseCosmeticVehicle:HasAnyMatchingGameplayTags(TagContainer) end

---Check if the asset has gameplay tags that matches against all of the specified tags (expands to include parents of asset tags)
---@param TagContainer FGameplayTagContainer
---@return boolean
function ABaseCosmeticVehicle:HasAllMatchingGameplayTags(TagContainer) end

---Gets the owned gameplay tags for the asset.  Exposed to allow redirects of existing GetOwnedGameplayTags calls.  In Blueprints, new nodes will use BlueprintGameplayTagLibrary's version.
---@return FGameplayTagContainer
function ABaseCosmeticVehicle:BP_GetOwnedGameplayTags() end

