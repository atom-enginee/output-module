--————————————————————————————————————————————————————————————————————--

local debug = {}

--————————————————————————————————————————————————————————————————————--

-- Creates a new debug instance.
-- @param name The name of the debug instance.
-- @return A new debug object with specified name.
function debug.new(name)
    local instance = {
        name = name,  -- Name of the debug instance.
        logs = {},    -- Table to store log messages.
    }

    setmetatable(instance, debug)
    debug.__index = debug
    return instance
end

--————————————————————————————————————————————————————————————————————--

-- Logs a message to the console with a log level of "LOG".
-- @param ... Variable number of arguments to be logged.
function debug:log(...)
    local message = table.concat({...}, " ")
    table.insert(self.logs, message)
    print("[LOG] (" .. self.name .. "):(" .. script.Name .. "):", message)
end

--————————————————————————————————————————————————————————————————————--
-- Logs a message to the console with a log level of "WARNING".
-- @param ... Variable number of arguments to be logged.
function debug:warning(...)
    local message = table.concat({...}, " ")
    table.insert(self.logs, message)
    print("[WARNING] (" .. self.name .. "):(" .. script.Name .. "):", message)
end

--————————————————————————————————————————————————————————————————————--

-- Logs a message to the console with a log level of "ERROR".
-- @param ... Variable number of arguments to be logged.
function debug:error(...)
    local message = table.concat({...}, " ")
    table.insert(self.logs, message)
    print("[ERROR] (" .. self.name .. "):(" .. script.Name .. "):", message)
end

--————————————————————————————————————————————————————————————————————--

-- Retrieves all logged messages.
-- @return Table of logged messages.
function debug:getLogs()
    return self.logs
end

--————————————————————————————————————————————————————————————————————--

-- A generic debug function that simply prints a prompt and a user input.
-- @param prompt The prompt message to display before the input.
-- @param user_input The user input to display and return.
-- @return The user input.
function debug:debug(prompt, user_input)
    print(prompt .. ": " .. user_input)
    return user_input
end

--————————————————————————————————————————————————————————————————————--

return debug
