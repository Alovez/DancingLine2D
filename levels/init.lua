--
-- Created by IntelliJ IDEA.
-- User: A
-- Date: 2019/9/7
-- Time: 9:50
-- Email: ruinand@live.com
--
local path = ...

local function preload(mod)
    package.preload[mod] = function()
        return require(path .. "/" .. mod .. "/main")
    end
end

preload("demo_level")

