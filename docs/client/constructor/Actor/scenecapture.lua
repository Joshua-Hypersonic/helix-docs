---@class SceneCapture
local SceneCapture = {}

---Creates a new SceneCapture2D component with a render target
---@param Location FVector @[opt] World position for the capture camera (default: 0,0,0)
---@param Rotation FRotator @[opt] World orientation for the capture camera (default: 0,0,0)
---@param Width number @[opt] Render target width in pixels (default: 1920)
---@param Height number @[opt] Render target height in pixels (default: 1080)
---@param CaptureSource ESceneCaptureSource @[opt] Capture source type (default: SCS_FinalColorLDR)
---@param bFollowPlayer boolean @[opt] Auto-follow player camera (default: false)
---@return table SceneCapture wrapper with .Object (AActor), .Component (USceneCaptureComponent2D), .RenderTarget (UTextureRenderTarget2D), and .UpdateTimer
function SceneCapture(Location, Rotation, Width, Height, CaptureSource, bFollowPlayer) end

---Makes the scene capture follow the player's camera view
---@param UpdateInterval number @[opt] Update frequency in milliseconds (default: 16 for ~60fps)
function SceneCapture:FollowPlayerCamera(UpdateInterval) end

---Stops following the player camera
function SceneCapture:StopFollowing() end

---Sets the capture location and rotation
---@param Location FVector New world position
---@param Rotation FRotator New world orientation
function SceneCapture:SetTransform(Location, Rotation) end
