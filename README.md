# stopwatch
Basic stopwatch implementation in Lua.

## Usage
The library is a simple two-step process for timing.
```lua
local stopwatch = require("modules.stopwatch")

local timer = stopwatch.create()
timer:start()

local time = timer:stop()
-- or optionally, timer.difference
print(time)
```
You can define start times and end times as well if necessary.
```lua
time.start_time = os.time() - 60 -- 1 minute ago
-- stuff
print(time:stop()) -- still the difference between start_time and stop_time
```