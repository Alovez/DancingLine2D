--
-- Created by IntelliJ IDEA.
-- User: A
-- Date: 2019/8/31
-- Time: 16:11
-- Email: ruinand@live.com
--
local path = ...

local function preload(mod)
    package.preload[mod] = function()
        return require(path .. "/" .. mod)
    end
end

preload("stateswitcher")
preload("assets")
preload("ase")
preload("fs")
preload("json")
preload("chiro")
preload("circularbuffer")
preload("camera")
preload("player")
preload("env")
