--
-- Created by IntelliJ IDEA.
-- User: A
-- Date: 2019/9/12
-- Time: 20:47
-- Email: ruinand@live.com
--

require("lib")
require("levels")

state=require("stateswitcher")
local assets = require("assets")

local bg = 0;

function love.keypressed(key, scancode, isrepeat)
    if key == "escape" then
        love.event.quit()
    elseif key == "j" then
        love.graphics.print("Loading...", 80, 60)
        state.switch("level1")
    end
end

function love.load()
    assets.load_textures("pic")
    bg = assets.texture("bg_start")
end

function love.draw()
    love.graphics.draw(bg, 80, 60);
end


