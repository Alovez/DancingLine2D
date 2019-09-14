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
        exit = 1000,
        x = 128, y = 113,
        ob = assets.texture("LotusLeaf1"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        enter = 0,
        exit = 1000,
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
        x = 174, y = 229,
        ob = assets.texture("egg"),
        scale_x = 1,
        scale_y = 1,
        rotate = 0
    },
    {
        enter =  24.5,
        exit = 29,
        x = 240, y = 180,
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
        x = 586, y = 160,
        enter = 0,
        exit = 1000,
        ob = assets.texture("LotusLeaf1"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        enter = 48.5833333333,
        exit = 1000,
        x = 468.79260253906, y = 86.266677856445,
        ob = assets.texture("duck"),
        scale_x = 0.8,
        scale_y = 0.8,
    },
    {
        enter = 50.917293548584,
        exit = 1000,
        x = 637, y = 105,
        ob = assets.texture("little_duck"),
        scale_x = 0.8,
        scale_y = 0.8,
    },
    {
        enter = 66,
        exit = 1000,
        x = 581.26477050781, y = 386.29786682129,
        ob = assets.texture("grass2"),
        scale_x = 0.5,
        scale_y = 0.5,
    },
    {
        enter = 66,
        exit = 1000,
        x = 613.26477050781, y = 359.29786682129,
        ob = assets.texture("bubble"),
        scale_x = 0.5,
        scale_y = 0.5,
    },
    {
        enter = 66,
        exit = 1000,
        x = 741.26477050781, y = 396.29786682129,
        ob = assets.texture("bubble3"),
        scale_x = 0.5,
        scale_y = 0.5,
    },
    {
        enter = 66,
        exit = 1000,
        x = 666, y = 402,
        ob = assets.texture("bubble4"),
        scale_x = 0.5,
        scale_y = 0.5,
    },
    {
        enter = 66,
        exit = 1000,
        x = 767.26477050781, y = 338.29786682129,
        ob = assets.texture("grass1"),
        scale_x = 0.5,
        scale_y = 0.5,
    },
    {
        enter = 82.625,
        exit = 1000,
        x = 669.26477050781, y = 293.29786682129,
        ob = assets.texture("fish"),
        scale_x = 0.5,
        scale_y = 0.5,
    },
    {
        enter = 84.5833333333,
        exit = 1000,
        x = 808.26477050781, y = 312.29786682129,
        ob = assets.texture("little_fish"),
        scale_x = 0.5,
        scale_y = 0.5,
    },
    {
        x = 750, y = 82,
        enter = 80,
        exit = 156,
        ob = assets.texture("bubble2"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        x = 910, y = 90,
        enter = 80,
        exit = 156,
        ob = assets.texture("bubble3"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        x = 872, y = 150,
        enter = 112.583333333,
        exit = 156,
        ob = assets.texture("tortoise"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        x = 943.7705078125, y = 211.07171630859,
        enter = 114.541666667,
        exit = 156,
        ob = assets.texture("little_tortoise"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        x = 1293, y = -53,
        enter =  100,
        exit = 1000,
        ob = assets.texture("banks"),
        scale_x = 0.8,
        scale_y = 0.8,
        rotate = 0
    },
    {
        x = 1301, y = -22,
        enter =  144.458333333,
        exit = 1000,
        ob = assets.texture("goose"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        x = 1122.131312779, y = 66.979482378278,
        enter =  100,
        exit = 1000,
        ob = assets.texture("wave"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        x = 1184.131312779, y = 140.97948237828,
        enter =  100,
        exit = 1000,
        ob = assets.texture("wave2"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        x = 1126, y = 7,
        enter =  100,
        exit = 1000,
        ob = assets.texture("wave3"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        x = 760, y = -8.2139282226563,
        enter =  100,
        exit = 1000,
        ob = assets.texture("LotusLeaf3"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
   {
        x = 954, y = -162.21392822266,
        enter =  100,
        exit = 1000,
        ob = assets.texture("LotusLeaf4"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },
    {
        x = 813, y = -40.213928222656,
        enter =  176.5,
        exit = 1000,
        ob = assets.texture("frog"),
        scale_x = 0.5,
        scale_y = 0.5,
        rotate = 0
    },


}

return scene