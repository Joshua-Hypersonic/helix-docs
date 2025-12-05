---@class Database
local Database = {}

---Initializes the shared database path and opens the SQLite database
---@param filenameOrPath string Full path to the SQLite .db file or relative filename (saves to project's Saved directory)
function Database.Initialize(filenameOrPath) end

---Cleanly closes the database connection
function Database.Close() end

---Executes a non-SELECT SQL statement (INSERT, UPDATE, DELETE)
---@param query string SQL query string
---@param params string[] @[opt] Array of parameters for prepared statement (default: {})
---@return boolean Success status of the execution
function Database.Execute(query, params) end

---Executes a SELECT query and returns the result rows
---@param query string SQL SELECT query string
---@param params string[] @[opt] Array of parameters for prepared statement (default: {})
---@return table[] Array of rows with .Columns property containing the data
function Database.Select(query, params) end

---Executes a SQL command asynchronously (non-SELECT)
---@param query string SQL query string
---@param params string[] @[opt] Array of parameters for prepared statement (default: {})
---@param callback function Callback function with signature: function(success: boolean)
function Database.ExecuteAsync(query, params, callback) end

---Executes a SELECT query asynchronously and returns rows
---@param query string SQL SELECT query string
---@param params string[] @[opt] Array of parameters for prepared statement (default: {})
---@param callback function Callback function with signature: function(results: table[])
function Database.SelectAsync(query, params, callback) end
