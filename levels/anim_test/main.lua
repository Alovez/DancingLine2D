--
-- Created by IntelliJ IDEA.
-- User: A
-- Date: 2019/9/12
-- Time: 19:50
-- Email: ruinand@live.com
--
require 'spine-love/spine'
require("lib")
local chiro = require 'chiro'


animation = chiro.create({
    dir = 'anim/dragon',
    states = {
        walk = {
            loop = true
        }
    },
    default = 'walk'
})

function love.update(delta)
    animation:update(delta)
end

function love.draw()
    love.graphics.setColor(255, 255, 255)
    animation:draw(400, 600)
end


