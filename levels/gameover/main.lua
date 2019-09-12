--
-- Created by IntelliJ IDEA.
-- User: ran
-- Date: 2019-09-12
-- Time: 22:31
-- Email: ruinand@live.com
--

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
        state.switch("start_page")
    end
end

function love.load()
    assets.load_textures("pic")
    bg = assets.texture("bg_gameover")
end

function love.draw()
    love.graphics.draw(bg, 80, 60);
end


