--
-- Created by IntelliJ IDEA.
-- User: A
-- Date: 2019/9/9
-- Time: 21:22
-- Email: ruinand@live.com
--
-- wengwengweng

local env = {}
local vars = {}

function env.set(k, v)
    vars[k] = v
end

function env.apply(args)

    for _, item in ipairs(args) do

        local pair = string.split(item, "=")

        if #pair == 1 then
            env.set(pair[1], true)
        else
            env.set(pair[1], pair[2])
        end

    end

end

meta(env, "()", function(_, k)
    return vars[k]
end)

return env

