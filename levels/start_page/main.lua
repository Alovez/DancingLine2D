--
-- Created by IntelliJ IDEA.
-- User: A
-- Date: 2019/9/12
-- Time: 20:47
-- Email: ruinand@live.com
--



function love.update(delta)
    animation:update(delta)
end

function love.draw()
    love.graphics.setColor(255, 255, 255)
    animation:draw(400, 600)
end


