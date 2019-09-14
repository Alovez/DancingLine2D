require("lib")
local chiro = require 'chiro'

local map = {
    {
        time = 0, -- 出现的时间
        folow_camera = false, --是否跟随镜头
        x = 171, --出现时的x坐标
        y = 140, -- 出现时的y坐标
        animation = chiro.create({
            dir = 'anim/powerup', --动画文件对应的位置
            states = {
                grow = { --动画效果是否需要循环播放
                    loop = true
                }
            },
            default = 'grow' --播放哪个特效
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