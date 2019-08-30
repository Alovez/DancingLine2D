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
    return o
end

function copy2(obj)
    if type(obj) ~= 'table' then return obj end
    local res = setmetatable({}, getmetatable(obj))
    for k, v in pairs(obj) do res[copy2(k)] = copy2(v) end
    return res
end

function Player:switch()
    if self.direction == 0 then
        self.direction = 1
    else
        self.direction = 0
    end

    local new_index = table.getn(self.rect_list)
    self.rect_list[new_index + 1] = copy2(self.current_rect)
    local current_x = self.current_rect.x
    local current_y = self.current_rect.y
    local new_rect = Rect:new(nil, current_x, current_y, 30, 30)
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
    self.current_rect:draw()
    print(self.current_rect)
    print(self.current_rect.x, self.current_rect.y)
    for k, v in pairs(self.rect_list) do
        print(k)
        print(v)
        print("x: ", v.x, "y: ", v.y)
        v:draw()
    end
end

return Player
