--
-- Created by IntelliJ IDEA.
-- User: A
-- Date: 2019/8/31
-- Time: 9:45
-- Email: ruinand@live.com
--


local CircularQueue = {}

function CircularQueue.new(max_size)
    local hist = { __index = CircularQueue }
    setmetatable(hist, hist)
    hist.max_size = max_size
    hist.size = 0
    hist.cursor = 1
    return hist
end

function CircularQueue:push(value)
    if self.size < self.max_size then
        table.insert(self, value)
        self.size = self.size + 1
    else
        self[self.cursor] = value
        self.cursor = self.cursor % self.max_size + 1
    end
end

function CircularQueue:iterator()
    local i = 0
    return function()
        i = i + 1
        if i <= self.size then
            return self[(self.cursor - i - 1) % self.size + 1]
        end
    end
end

return CircularQueue