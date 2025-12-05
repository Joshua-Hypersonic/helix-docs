---@class Trace

---@param Start FVector
---@param End FVector
---@param channel integer
---@param mode integer
---@param IgnoredActors table
---@return FHitResult|nil
function Trace:LineSingle(Start, End, channel, mode, IgnoredActors) end

---@param Start FVector
---@param End FVector
---@param channel integer
---@param mode integer
---@param IgnoredActors table
---@return table
function Trace:LineMulti(Start, End, channel, mode, IgnoredActors) end

---@param Start FVector
---@param End FVector
---@param Radius number
---@param channel integer
---@param mode integer
---@param IgnoredActors table
---@return FHitResult|nil
function Trace:SphereSingle(Start, End, Radius, channel, mode, IgnoredActors) end

---@param Start FVector
---@param End FVector
---@param Radius number
---@param channel integer
---@param mode integer
---@param IgnoredActors table
---@return table
function Trace:SphereMulti(Start, End, Radius, channel, mode, IgnoredActors) end

---@param Start FVector
---@param End FVector
---@param HalfSize FVector
---@param Orientation FRotator
---@param channel integer
---@param mode integer
---@param IgnoredActors table
---@return FHitResult|nil
function Trace:BoxSingle(Start, End, HalfSize, Orientation, channel, mode, IgnoredActors) end

---@param Start FVector
---@param End FVector
---@param HalfSize FVector
---@param Orientation FRotator
---@param channel integer
---@param mode integer
---@param IgnoredActors table
---@return table
function Trace:BoxMulti(Start, End, HalfSize, Orientation, channel, mode, IgnoredActors) end

---@param Start FVector
---@param End FVector
---@param Radius number
---@param HalfHeight number
---@param channel integer
---@param mode integer
---@param IgnoredActors table
---@return FHitResult|nil
function Trace:CapsuleSingle(Start, End, Radius, HalfHeight, channel, mode, IgnoredActors) end

---@param Start FVector
---@param End FVector
---@param Radius number
---@param HalfHeight number
---@param channel integer
---@param mode integer
---@param IgnoredActors table
---@return table
function Trace:CapsuleMulti(Start, End, Radius, HalfHeight, channel, mode, IgnoredActors) end
