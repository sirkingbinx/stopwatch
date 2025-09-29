--// Title: stopwatch.lua
--// Description: stopwatch implementation

local stopwatch = {}

local stopwatch = {
    start_time = -1,
    end_time = -1,
    difference = -1,

    start = function()
        self.start_time = os.time()
        self.end_time = -1
        self.difference = -1
    end,

    stop = function()
        self.end_time = os.time()

        if self.start_time < 0 then
            return -1
        end

        self.difference = os.difftime(self.start_time, self.end_time)

        return self.difference
    end,

    tostring = function()
        return ("%s secs"):format(self.difference)
    end,
}

function stopwatch.create() {
    local new_stopwatch = {}
    setmetatable(new_stopwatch, stopwatch)
    return new_stopwatch
}

return stopwatch