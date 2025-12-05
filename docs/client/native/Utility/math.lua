---@class HELIXMath
local HELIXMath = {}

---Clamps an angle to the range [0, 360)
---@param Angle number The angle to clamp
---@return number The clamped angle
function HELIXMath.ClampAxis(Angle) end

---Normalizes an angle to the range [-180, 180)
---@param Angle number The angle to normalize
---@return number The normalized angle
function HELIXMath.NormalizeAxis(Angle) end

---Clamps a value between a minimum and maximum
---@param Value number The value to clamp
---@param Min number Minimum value
---@param Max number Maximum value
---@return number The clamped value
function HELIXMath.Clamp(Value, Min, Max) end

---Rounds a float value to the nearest integer
---@param Value number The value to round
---@return number The rounded value
function HELIXMath.Round(Value) end

---Interpolates a float value towards a target
---@param Current number Current value
---@param Target number Target value
---@param DeltaTime number Time since last tick
---@param InterpSpeed number Interpolation speed
---@return number Interpolated value
function HELIXMath.FInterpTo(Current, Target, DeltaTime, InterpSpeed) end

---Interpolates a rotator towards a target
---@param Current FRotator Current rotation
---@param Target FRotator Target rotation
---@param DeltaTime number Time since last tick
---@param InterpSpeed number Interpolation speed
---@return FRotator Interpolated rotation
function HELIXMath.RInterpTo(Current, Target, DeltaTime, InterpSpeed) end

---Interpolates a rotator towards a target at constant speed
---@param Current FRotator Current rotation
---@param Target FRotator Target rotation
---@param DeltaTime number Time since last tick
---@param InterpSpeed number Interpolation speed
---@return FRotator Interpolated rotation
function HELIXMath.RInterpConstantTo(Current, Target, DeltaTime, InterpSpeed) end

---Interpolates a vector towards a target
---@param Current FVector Current vector
---@param Target FVector Target vector
---@param DeltaTime number Time since last tick
---@param InterpSpeed number Interpolation speed
---@return FVector Interpolated vector
function HELIXMath.VInterpTo(Current, Target, DeltaTime, InterpSpeed) end

---Interpolates a vector towards a target at constant speed
---@param Current FVector Current vector
---@param Target FVector Target vector
---@param DeltaTime number Time since last tick
---@param InterpSpeed number Interpolation speed
---@return FVector Interpolated vector
function HELIXMath.VInterpConstantTo(Current, Target, DeltaTime, InterpSpeed) end

---Linearly interpolates between two rotators
---@param A FRotator Start rotation
---@param B FRotator End rotation
---@param Alpha number Interpolation factor (0-1)
---@return FRotator Interpolated rotation
function HELIXMath.RLerp(A, B, Alpha) end

---Linearly interpolates between two vectors
---@param A FVector Start vector
---@param B FVector End vector
---@param Alpha number Interpolation factor (0-1)
---@return FVector Interpolated vector
function HELIXMath.VLerp(A, B, Alpha) end

---Linearly interpolates between two transforms
---@param A FTransform Start transform
---@param B FTransform End transform
---@param Alpha number Interpolation factor (0-1)
---@return FTransform Interpolated transform
function HELIXMath.TLerp(A, B, Alpha) end

---Projects a vector onto another vector
---@param V FVector Vector to project
---@param Target FVector Target vector to project onto
---@return FVector Projected vector
function HELIXMath.ProjectVectorOnToVector(V, Target) end

---Projects a vector onto a plane
---@param V FVector Vector to project
---@param PlaneNormal FVector Normal of the plane
---@return FVector Projected vector
function HELIXMath.ProjectVectorOnToPlane(V, PlaneNormal) end

---Mirrors a vector across a plane defined by a normal
---@param Direction FVector Vector to mirror
---@param SurfaceNormal FVector Normal of the surface
---@return FVector Mirrored vector
function HELIXMath.MirrorVectorByNormal(Direction, SurfaceNormal) end

---Converts degrees to radians
---@param Degrees number Angle in degrees
---@return number Angle in radians
function HELIXMath.DegreesToRadians(Degrees) end

---Converts radians to degrees
---@param Radians number Angle in radians
---@return number Angle in degrees
function HELIXMath.RadiansToDegrees(Radians) end

---Calculates the sine of an angle
---@param Value number Angle in radians
---@return number Sine value
function HELIXMath.Sin(Value) end

---Calculates the cosine of an angle
---@param Value number Angle in radians
---@return number Cosine value
function HELIXMath.Cos(Value) end

---Calculates the tangent of an angle
---@param Value number Angle in radians
---@return number Tangent value
function HELIXMath.Tan(Value) end

---Calculates the square root of a value
---@param Value number The value
---@return number Square root
function HELIXMath.Sqrt(Value) end

---Calculates the square of a value
---@param Value number The value
---@return number Squared value
function HELIXMath.Square(Value) end

---Returns the sign of a float value (-1, 0, or 1)
---@param Value number The value
---@return number Sign of the value
function HELIXMath.Sign(Value) end

---Safely divides two numbers, returning 0 if divisor is 0
---@param A number Dividend
---@param B number Divisor
---@return number Result of division or 0 if B is 0
function HELIXMath.SafeDivide(A, B) end

---Calculates the length of a vector
---@param Vector FVector The vector
---@return number Length of the vector
function HELIXMath.VectorLength(Vector) end

---Calculates the distance between two vectors
---@param A FVector First vector
---@param B FVector Second vector
---@return number Distance between vectors
function HELIXMath.VectorDistance(A, B) end

---Calculates the 2D distance between two vectors (ignores Z)
---@param A FVector First vector
---@param B FVector Second vector
---@return number 2D distance between vectors
function HELIXMath.VectorDistance2D(A, B) end

---Normalizes a vector to unit length
---@param Vector FVector The vector to normalize
---@return FVector Normalized vector
function HELIXMath.VectorNormalize(Vector) end

---Linearly interpolates between two vectors
---@param A FVector Start vector
---@param B FVector End vector
---@param Alpha number Interpolation factor (0-1)
---@return FVector Interpolated vector
function HELIXMath.VectorLerp(A, B, Alpha) end

---Clamps the size of a vector to a maximum length
---@param Vector FVector The vector to clamp
---@param MaxSize number Maximum length
---@return FVector Clamped vector
function HELIXMath.VectorClampSize(Vector, MaxSize) end

---Creates a rotator from an axis and angle
---@param Axis FVector Rotation axis
---@param Angle number Rotation angle in degrees
---@return FRotator Resulting rotator
function HELIXMath.RotatorFromAxisAndAngle(Axis, Angle) end

---Normalizes the delta between two rotators
---@param A FRotator First rotator
---@param B FRotator Second rotator
---@return FRotator Normalized delta rotator
function HELIXMath.NormalizeDeltaRotator(A, B) end

---Transforms a location by a transform
---@param Transform FTransform The transform
---@param Location FVector The location to transform
---@return FVector Transformed location
function HELIXMath.TransformLocation(Transform, Location) end

---Transforms a rotation by a transform
---@param Transform FTransform The transform
---@param Rotation FRotator The rotation to transform
---@return FRotator Transformed rotation
function HELIXMath.TransformRotation(Transform, Rotation) end

---Transforms a direction ve
