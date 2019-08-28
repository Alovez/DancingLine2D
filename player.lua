--
-- Created by IntelliJ IDEA.
-- User: ran
-- Date: 2019-08-28
-- Time: 12:42
-- To change this template use File | Settings | File Templates.
--
-- Player class


local Rect = require 'Rect'

Player = Rect:new(nil, 0, 0, 30, 30)


function Player:new(o, x, y, w, h)
    o = o or Rect:new(nil, x, y , w, h)
    setmetatable(o, self)
    self.__index = self
    self.direction = 1
    return o
end

function Player:update(x, y)
    if (self.direction == 0)
    then
        self.x = self.x - 1;
        self.width = self.width + 1;
    else
        self.y = self.y - 1;
        self.height = self.height + 1;
    end
end

return Player
