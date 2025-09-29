--// Title: stopwatch.lua
--// Description: stopwatch implementation

local stopwatch = {}

local stopwatch_object = {
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
    end
}

function stopwatch.create()
    local this_stopwatch = {}

    setmetatable(this_stopwatch, stopwatch_object)

    return this_stopwatch
end

return stopwatch