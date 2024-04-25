# Debug Library
___
This Lua library provides easy-to-use functionalities for logging and managing debug messages. It supports different log levels such as LOG, WARNING, and ERROR, and can be used to enhance debugging processes in Lua projects.
___
### Features
> Custom Debug Instances: Create separate debug instances with unique names.
> Multiple Log Levels: Support for different log levels including LOG, WARNING, and ERROR.
> Log Management: Store and retrieve log messages for each instance.
> Flexible Logging: Accepts variable number of arguments for logging.
___
### Installation
To use this debug library in your Lua project, follow these simple steps:

1. Clone the Repository: Clone this repository to your local machine or download the `debug.lua` file directly.

```
git clone https://github.com/atom-enginee/output-module.git
```
2. Include the Library: Include the `debug.lua` file in your Lua script.

```
local debug = require("path/to/debug")
```
___
### Usage
Below are examples of how to use the debug library:
___
### Creating a Debug Instance

```lua
local debugger = debug.new("ExampleDebugger")
```
> Logging Messages

```lua
-- Log a simple message
debugger:log("This is a log message.")

-- Log a warning message
debugger:warning("This is a warning message.")

-- Log an error message
debugger:error("This is an error message.")
```
> Retrieving Logged Messages

```lua
local logs = debugger:getLogs()
for i, log in ipairs(logs) do
    print(log)
end
```
> Debug with Prompt

```lua
debugger:debug("Enter your name", "John Doe")
```
___
### Contributing
Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

1. Fork the Project
2. Create your Feature Branch (git checkout -b feature/AmazingFeature)
3. Commit your Changes (git commit -m 'Add some AmazingFeature')
4. Push to the Branch (git push origin feature/AmazingFeature)
5. Open a Pull Request
___
### License
Distributed under the MIT License. See `LICENSE` for more information.
