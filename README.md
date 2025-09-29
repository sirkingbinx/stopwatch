# stopwatch
Basic stopwatch implementation in Lua.

## Usage
### Example
```lua
local sw = require("stopwatch")

local stopwatch = sw.create()
stopwatch:start()
repeat until os.time() == stopwatch.start_time + 5 -- wait 5 seconds
stopwatch:stop() -- returns the total time as an integer, but we use :tostring() to automatically format it
print(stopwatch:tostring())
```
### Breakdown
- `stopwatch.create() -> stopwatch`: Creates a new `stopwatch` object
### object: `stopwatch`
- `stopwatch.start_time : integer`: Unix time representation of when the stop watch was started. (`-1` if never started)
- `stopwatch.end_time : integer`: Unix time representation of when the stop watch was ended. (`-1` if never ended)
- `stopwatch.difference : integer`: Stopwatch runtime (`-1` if stopwatch has not been started and ended)

- `stopwatch:start() : nil`: Start the stopwatch, sets `start_time` to the current unix time
- `stopwatch:end() : integer`: Ends the stopwatch, sets `end_time` to the current unix time, and returns `stopwatch.difference`

- `stopwatch:tostring(): string`: Converts the stopwatch's time to a string (formatted as `"x secs"`)