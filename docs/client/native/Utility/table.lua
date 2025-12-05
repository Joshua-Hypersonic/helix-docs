---@class HELIXTable

---@param tbl table
---@param indent number
function HELIXTable.Dump(tbl, indent) end

---@param tableToSearch table
---@param value any
---@param recursive boolean
---@param path table
---@return table|nil
function HELIXTable.find(tableToSearch, value, recursive, path) end

---@param tbl table
---@param predicate fun(value:any):boolean
---@return table
function HELIXTable.filter(tbl, predicate) end

---@param tbl table
---@param mapper fun(value:any):any
---@return table
function HELIXTable.map(tbl, mapper) end

---@return table
function HELIXTable.merge(...) end

---@return table
function HELIXTable.deepMerge(...) end

---@param tbl table
---@param reducer fun(acc:any, value:any):any
---@param initialValue any
---@return any
function HELIXTable.reduce(tbl, reducer, initialValue) end

---@param tbl table
---@param start number
---@param stop number
---@param step number
---@return table
function HELIXTable.slice(tbl, start, stop, step) end

---@param tbl table
---@return number
function HELIXTable.size(tbl) end

---@param tbl table
---@return table
function HELIXTable.shuffle(tbl) end
