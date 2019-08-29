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
    self.direction = 0
    self.rect_list = {}
    self.current_rect = Rect:new(nil, x, y , w, h)
    self.rect_list[0] = self.current_rect
    return o
end

function Player:switch()
    if self.direction == 0 then
        self.direction = 1
    else
        self.direction = 0
    end

    local new_index = table.getn(self.rect_list)
    local new_rect = Rect:new(nil, self.x, self.y, 30, 30)
    self.rect_list[new_index] = new_rect
    self.current_rect = new_rect
end

function Player:update()
    if (self.direction == 0)
    then
        self.current_rect.x = self.current_rect.x - 1;
        self.current_rect.width = self.current_rect.width + 1;
    else
        self.current_rect.y = self.current_rect.y - 1;
        self.current_rect.height = self.current_rect.height + 1;
    end
end

function Player:update_rects()
    for k, v in pairs(self.rect_list) do
        print(v.x)
        v:draw()
    end
end

return Player
