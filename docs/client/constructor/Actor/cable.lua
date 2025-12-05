---@class Cable
local Cable = {}

---Creates a new Cable actor with physics constraints in the world
---@param Location FVector World position for the cable
---@param bEnableVisuals boolean @[opt] Whether to show the cable visually (default: false)
---@return table Cable wrapper with .Object (AActor), .CableComponent (UCableComponent), and .PhysicsComponent (UPhysicsConstraintComponent)
function Cable(Location, bEnableVisuals) end

---Attaches the start of a cable to another actor
---@param TargetActor AActor The actor to attach to
---@param RelativeLocation FVector @[opt] The relative location to attach to (default: 0,0,0)
---@param Socket FString @[opt] The socket name to attach to (default: '')
---@return boolean Whether the attachment was successful
function Cable:AttachStartTo(TargetActor, RelativeLocation, Socket) end

---Attaches the end of a cable to another actor
---@param TargetActor AActor The actor to attach to
---@param RelativeLocation FVector @[opt] The relative location to attach to (default: 0,0,0)
---@param Socket FString @[opt] The socket name to attach to (default: '')
function Cable:AttachEndTo(TargetActor, RelativeLocation, Socket) end

---Detaches the end of the cable from the actor
function Cable:DetachEnd() end

---Detaches the start of the cable from the actor
function Cable:DetachStart() end

---Sets the cable settings
---@param Length number @[opt] The length of the cable (default: 100.0)
---@param Segments number @[opt] The number of segments in the cable (default: 10)
---@param SolverIterations number @[opt] The number of solver iterations (default: 0)
function Cable:SetCableSettings(Length, Segments, SolverIterations) end

---Applies the force to the particles in the cable
---@param Force FVector @[opt] The force vector to apply (default: 0,0,0)
---@param GravityScale number @[opt] The gravity scale to apply (default: 1.0)
function Cable:SetForces(Force, GravityScale) end

---Sets the angular limits for the cable
---@param Swing1Motion ConstraintMotion @[opt] The motion type for Swing1 (default: Free)
---@param Swing2Motion ConstraintMotion @[opt] The motion type for Swing2 (default: Free)
---@param TwistMotion ConstraintMotion @[opt] The motion type for Twist (default: Free)
---@param Swing1LimitAngle number @[opt] The limit angle for Swing1 (default: 0)
---@param Swing2LimitAngle number @[opt] The limit angle for Swing2 (default: 0)
---@param TwistLimitAngle number @[opt] The limit angle for Twist (default: 0)
function Cable:SetAngularLimits(Swing1Motion, Swing2Motion, TwistMotion, Swing1LimitAngle, Swing2LimitAngle, TwistLimitAngle) end

---Sets the linear limits for the cable
---@param XMotion ConstraintMotion @[opt] The motion type for X (default: Free)
---@param YMotion ConstraintMotion @[opt] The motion type for Y (default: Free)
---@param ZMotion ConstraintMotion @[opt] The motion type for Z (default: Free)
---@param Limit number @[opt] The limit for the linear motion (default: 0)
---@param Restitution number @[opt] The restitution value (default: 0)
---@param bUseSoftConstraint boolean @[opt] Whether to use soft constraints (default: false)
---@param Stiffness number @[opt] The stiffness value (default: 0)
---@param Damping number @[opt] The damping value (default: 0)
function Cable:SetLinearLimits(XMotion, YMotion, ZMotion, Limit, Restitution, bUseSoftConstraint, Stiffness, Damping) end

---Sets the rendering settings for the cable
---@param Width number @[opt] The width of the cable (default: 6.0)
---@param NumberOfSides number @[opt] The number of sides for the cable (default: 4)
---@param TileMaterial number @[opt] The material tiling for the cable (default: 1.0)
function Cable:SetRenderingSettings(Width, NumberOfSides, TileMaterial) end

---Gets the actor that the start of the cable is attached to
---@return AActor The actor the cable is attached to
function Cable:GetAttachedStartTo() end

---Gets the component referenced that the end of the cable is attached to
---@return FComponentReference The component reference the cable is attached to
function Cable:GetAttachedEndTo() end
