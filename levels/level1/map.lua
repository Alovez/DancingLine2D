require("lib")
local chiro = require 'chiro'

local map = {
    {
        time = 0,
        folow_camera = false,
        x = 234,
        y = -28,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = true
                }
            },
            default = 'grow'
        })
    },
    {
        time = 0,
        folow_camera = true,
        x = 220,
        y = -28,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = true
                }
            },
            default = 'grow'
        })
    }
}

return map