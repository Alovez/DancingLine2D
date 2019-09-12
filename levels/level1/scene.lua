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
        exit = 29,
        x = 116, y = 163,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter = 0,
        exit = 100,
        x = 128, y = 113,
        ob = assets.texture("LotusLeaf1"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        enter = 0,
        exit = 100,
        x = 290, y = 83,
        ob = assets.texture("LotusLeaf2"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        enter =  4.70833333333,
        exit = 29,
        x = 153, y = 198,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  8.58333333333,
        exit = 29,
        x = 177, y = 201,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  12.6666666667,
        exit = 29,
        x = 209, y = 205,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  16.5416666667,
        exit = 29,
        x = 207, y = 172,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  20.625,
        exit = 29,
        x = 228, y = 172,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  24.5,
        exit = 29,
        x = 230, y = 188,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  28.5,
        exit = 29,
        x = 199, y = 236,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  29,
        exit = 100,
        x = 116, y = 163,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  29,
        exit = 100,
        x = 153, y = 198,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  29,
        exit = 100,
        x = 177, y = 201,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter = 29,
        exit = 100,
        x = 209, y = 205,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  29,
        exit = 100,
        x = 207, y = 172,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  29,
        exit = 100,
        x = 228, y = 172,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  29,
        exit = 100,
        x = 230, y = 188,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        enter =  29,
        exit = 100,
        x = 199, y = 236,
        ob = assets.texture("tadpole"),
        scale_x = 0.2,
        scale_y = 0.2,
    },
    {
        x = 586, y = 160,
        enter = 0,
        exit = 100,
        ob = assets.texture("LotusLeaf1"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    }
}

return scene