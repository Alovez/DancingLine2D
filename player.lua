--
-- Created by IntelliJ IDEA.
-- User: ran
-- Date: 2019-08-28
-- Time: 12:42
-- To change this template use File | Settings | File Templates.
--
-- Player class

local Player = {}


function Player:new(o, x, y, w, h, speed)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.direction = 0
    self.x = x;
    self.y = y;
    self.origin_width = w;
    self.origin_height = h;
    self.width = w;
    self.height = h;
    self.speed = speed;
    return o
end

function Player:switch()
    if self.direction == 0 then
        self.direction = 1
    else
        self.direction = 0
    end
end

function Player:update(dt)
    if (self.direction == 0)
    then
        self.x = self.x - self.speed * dt
        self.width = self.width + self.speed * dt
        self.height = self.origin_height;
    else
        self.y = self.y - self.speed * dt
        self.height = self.height + self.speed * dt
        self.width = self.origin_width;
    end
end

function Player:draw()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end

return Player
