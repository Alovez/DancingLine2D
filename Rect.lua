--
-- Created by IntelliJ IDEA.
-- User: ran
-- Date: 2019-08-28
-- Time: 12:43
-- To change this template use File | Settings | File Templates.
--

Rect = {x = 0, y = 0, width = 30, height = 30}

function Rect:new (o, x, y, width, height)
    o = o or {}
    setmetatable(o, self);
    self.__index = self;
    self.x = x;
    self.y = y;
    self.width = width;
    self.height = height;
    return o
end

function Rect:draw()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end

return Rect