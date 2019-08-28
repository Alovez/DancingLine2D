--
-- Created by IntelliJ IDEA.
-- User: ran
-- Date: 2019-08-28
-- Time: 12:05
-- To change this template use File | Settings | File Templates.
--

local Camera = require 'Camera'
local Player = require 'Player'



function love.load()
    -- Create a camera with a 'width' of 400 x 300 on screen at ( 32, 32 ).
    -- Because the camera has the flags 'resizable' and 'maintainAspectRatio', the default scaling will take over
    -- So everything drawn will be scaled up to maximize space within the window, with a 32 pixel buffer from each edge.
    cam = Camera( 400, 300, { x = 32, y = 32, resizable = true, maintainAspectRatio = true } );
    cam:setRotation(40);
    player = Player:new(nil, 0, 0, 30, 30)
    print(debug.getmetatable(player))
end

function love.update( dt )
--    require("lovebird").update()
    player:update();
    cam:setTranslation(player.x, player.y)
    cam:update() -- Needed to appropriately resize the camera

end

function love.draw()
    cam:push()
    -- By default, translation is half camera width, half camera height
    -- So this draws a rectangle at the center of the screen.
    love.graphics.rectangle( 'fill', -32, -32, 64, 64 )
    player:draw()
    cam:pop()
end