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
local CircularQueue = require("circularbuffer")
local map = require("map")


function love.keypressed(key, scancode, isrepeat)
    if key == "escape" then
        love.event.quit()
    elseif key == "space" or key == "k" then
        if not start then
            start = true
        else
            if player then
                player:switch()
                tails:push({x=player.x, y=player.y, w=player.width, h=player.height})
--                print("{time=", source:tell())
--                print(",x=", player.x, ", y = ", player.y, "}")
            end
        end
    elseif key == "rctrl" then
        debug.debug()
    end
end

function love.load()
    -- init Camera
    cam = Camera( 320, 240, { x = 260, y = 180, resizable = false, maintainAspectRatio = true } );
    cam:setRotation(math.pi / 180 * 135);
    -- init Player
    player = Player:new(nil, 0, 0, 30, 30, 80);
    -- init Tials CircularQueue
    tails = CircularQueue.new(20);
    -- init Music
    source = love.audio.newSource( "sound/Mozart-mono.mp3", "static" );
    -- init global var
    start = false;
    last_time = 0;
end

function love.update( dt )
    if start then
        local current_time = source:tell();
        player:update(current_time - last_time);
        last_time = current_time
        cam:setTranslation(player.x, player.y)
        cam:update()
        if not source:isPlaying() then
            love.audio.play( source )
        end
        update_anims(current_time, dt)
    end
end

function update_anims(current_time, dt)
    for _, value in ipairs(map)
    do
        -- stop render anim after 5 second
        if value.time <= current_time and current_time - value.time < 5 then
            value.isPlaying = true
            value.animation:update(dt)
        elseif current_time - value.time > 5 then
            value.isPlaying = false
        end
    end
end

function darw_anims()
    local pre_it = false
    for _, value in ipairs(map)
    do
        if pre_it then
            if value.isPlaying then
                local x = pre_it.x + (value.x - pre_it.x) / 2
                local y = pre_it.y + (value.y - pre_it.y) / 2
                value.animation:draw(x, y)
            end
        end
        pre_it = value
    end
end

function draw_tails()
    if tails.size ~= 0 then
        for v in tails:iterator() do
            love.graphics.rectangle('fill', v.x, v.y, v.w, v.h)
        end
    end
end

function love.draw()
    cam:push()
    player:draw()
    if start then
        draw_tails()
        darw_anims()
    end
    cam:pop()
end