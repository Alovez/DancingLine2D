--
-- Created by IntelliJ IDEA.
-- User: A
-- Date: 2019/9/9
-- Time: 19:14
-- Email: ruinand@live.com
--
require("lib")
local assets = require("assets")
assets.load_textures("pic")

local scene = {
    {
        enter = 0.625,
        exit = 100,
        x = 122,
        y = 115,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter = 0,
        exit = 40,
        x = 122,
        y = 18,
        ob = assets.texture("leaf1"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        enter = 0,
        exit = 40,
        x = 150,
        y = -10,
        ob = assets.texture("leaf2"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        enter =  4.70833333333,
        exit = 100,
        x = 192,
        y = 118,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  8.58333333333,
        exit = 100,
        x = 262,
        y = 120,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  12.6666666667,
        exit = 100,
        x = 338,
        y = 134,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },

    {
        enter =  16.5416666667,
        exit = 100,
        x = 119,
        y = 231,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  20.625,
        exit = 100,
        x = 194,
        y = 237,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  24.5,
        exit = 100,
        x = 270,
        y = 240,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  0,
        exit = 40,
        x = 260,
        y = 217,
        ob = assets.texture("grass1"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        enter =  28.5,
        exit = 100,
        x = 338,
        y = 245,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  0,
        exit = 100,
        x = 90,
        y = -111,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  0,
        exit = 100,
        x = 163,
        y = -106,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  0,
        exit = 100,
        x = 255,
        y = -103,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  0,
        exit = 100,
        x = 331,
        y = -107,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  0,
        exit = 100,
        x = 91,
        y = -30,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  0,
        exit = 100,
        x = 152,
        y = -35,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  0,
        exit = 100,
        x = 216,
        y = -33,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  0,
        exit = 100,
        x = 313,
        y = -27,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  48.625,
        exit = 100,
        x = 192,
        y = -162,
        ob = assets.texture("duck"),
        scale_x = 0.8,
        scale_y = 0.8,
    },
    {
        enter =  50.799690246582,
        exit = 100,
        x = 309,
        y = -150,
        ob = assets.texture("duck"),
        scale_x = 0.4,
        scale_y = 0.4,
    },
}

return scene