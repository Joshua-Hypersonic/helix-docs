---@class TMap<TKey,TValue>
local TMap = {}

---Determines the number of entries in map
---@return integer
function TMap:Length()
end

---Determines the number of entries in map
---@return integer
function TMap:Num()
end

---Adds a key and value to the map. If something already uses the provided key it will be overwritten with the new value.
---After calling Key is guaranteed to be associated with Value until a subsequent mutation of the Map.
---@param Key TKey @The key that will be used to look the value up
---@param Value TValue @The value to be retrieved later
function TMap:Add(Key, Value)
end

---Removes a key and its associated value from the map.
---@param Key any @The key that will be used to look the value up
---@return boolean @True if an item was removed (False indicates nothing in the map uses the provided key)
function TMap:Remove(Key)
end

---Finds the value associated with the provided Key
---@param Key any @The key that will be used to look the value up
---@return any @The value associated with the key
function TMap:Find(Key)
end

---Finds the value associated with the provided Key
---@param Key any @The key that will be used to look the value up
---@return any @The value associated with the key
function TMap:FindRef(Key)
end

---Clears all entries, resetting it to empty
function TMap:Clear()
end

---Outputs an array of all keys present in the map
---@return TArray @All keys present in the map
function TMap:Keys()
end

---Outputs an array of all values present in the map
---@return TArray @All values present in the map
function TMap:Values()
end

---Get a lua table copy of this map.
---@return table
function TMap:ToTable()
end
