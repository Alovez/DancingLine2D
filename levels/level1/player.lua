require("lib")
local assets = require("assets")

local Player = {}

local folower = {
    {
        enter = 29,
        exit = 1000,
        x = 116,
        y = 163,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter = 29,
        exit = 1000,
        x = 153,
        y = 198,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter = 29,
        exit = 1000,
        x = 177,
        y = 201,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter = 29,
        exit = 1000,
        x = 209,
        y = 205,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter = 29,
        exit = 1000,
        x = 207,
        y = 172,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter = 29,
        exit = 1000,
        x = 174,
        y = 229,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter = 29,
        exit = 1000,
        x = 199,
        y = 236,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
}

assets.load_textures("pic")

function Player:new(o, x, y, sx, sy, d)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.pic = assets.texture("tadpole")
    self.x = x;
    self.origin_x = x;
    self.origin_y = y;
    self.rx = 0;
    self.ry = 0;
    self.y = y;
    self.sx = sx;
    self.sy = sy;
    self.d = d;
    self.height = 20;
    self.ct = 0;
    self.jumping = false;
    self.drawing = false;
    return o
end


function Player:jump(height)
    self.height = height or self.height
    self.jumping = true;
end



function Player:update(cx, cy, dt, ct)
    if self.jumping then
        self.ct = self.ct + dt;
        if self.ct < self.d then
            local time_scale = self.ct / self.d;
            self.y = self.origin_y - self.height * time_scale;
        elseif self.ct < self.d * 2 then
            local time_scale = (self.ct - self.d) / self.d;
            self.y = self.origin_y - self.height + self.height * time_scale;
        else
            self.ct = 0;
            self.y = self.origin_y;
            self.jumping = false;
        end
    end
    if ct > 29 then
        self.drawing = true
    end
    self.rx = self.x + cx + 240;
    self.ry = self.y + cy + 180;
    for k, v in ipairs(folower) do
        if ct > v.enter and ct < v.exit then
            v.drawing = true
            v.rx = v.x + cx;
            v.ry = v.y + cy;
        else
            v.drawing = false
        end
    end
end



function Player:draw()
    if self.drawing then
        love.graphics.draw(self.pic, self.rx, self.ry, 0, self.sx, self.sy)
    end
    for k, v in ipairs(folower) do
        if v.drawing then
            love.graphics.draw(v.ob, v.rx, v.ry, 0, v.scale_y, v.scale_y)
        end
    end
end

return Player