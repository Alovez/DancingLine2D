--
-- Created by IntelliJ IDEA.
-- User: ran
-- Date: 2019-08-28
-- Time: 12:05
-- To change this template use File | Settings | File Templates.
--
require 'spine-love/spine'
local Camera = require 'camera'
local Player = require 'player'
chiro = require 'chiro'


animation = chiro.create({
    dir = 'powerup',
    states = {
        grow = {
            loop = false
        }
    },
    default = 'grow'
})

function love.keypressed(key, scancode, isrepeat)
    if key == "escape" then
        love.event.quit()
    elseif key == "space" then
        if player then
            player:switch()
        end
    elseif key == "k" then
        if player then
            player:switch()
        end
    end
end

function love.load()
    cam = Camera( 320, 240, { x = 160, y = 120, resizable = false, maintainAspectRatio = true } );
    cam:setRotation(math.pi / 180 * 135);
    player = Player:new(nil, 0, 0, 30, 30)
end

function love.update( dt )
--    require("lovebird").update()
    player:update();
    animation:update(dt)
    cam:setTranslation(player.current_rect.x + 100, player.current_rect.y + 100)
    cam:update() -- Needed to appropriately resize the camera

end

function love.draw()
    cam:push()
    -- By default, translation is half camera width, half camera height
    -- So this draws a rectangle at the center of the screen.
    player:draw()
    animation:draw(-50, -50);
    animation:draw(-100, -50);
    animation:draw(-100, -150);
    cam:pop()
end