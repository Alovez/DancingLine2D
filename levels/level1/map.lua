require("lib")
local chiro = require 'chiro'

local map = {
    {
        time = 0,
        folow_camera = false,
        x = 171,
        y = 140,
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
        x = 264,
        y = 140,
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