--
-- Created by IntelliJ IDEA.
-- User: ran
-- Date: 2019-08-28
-- Time: 12:05
-- To change this template use File | Settings | File Templates.
--
require("lib")
require 'spine-love/spine'
local Camera = require 'camera'
local orbit = require("levels/level1/orbit")
local scene = require("levels/level1/scene")
local map = require("levels/level1/map")
local assets = require("assets")


local bgm_index = 0;
local orbit_index = 1;
local bgm = 0;
local start = false
local cam = Camera(320, 240, { x = 0, y = 0, resizable = false, maintainAspectRatio = true });


function love.load()
    -- init Camera
    -- init Music

    assets.load_sounds("sounds")
    bgm = assets.sound("level1")("static");
    assets.load_textures("pic")
    -- init global var
    start = false;
end


function love.keypressed(key, scancode, isrepeat)
    if key == "escape" then
        love.event.quit()
    elseif key == "space" or key == "k" then
        if not start then
            start = true
        else
            print(bgm:tell())
        end
    elseif key == "rctrl" then
        love.audio.pause(bgm)
        debug.debug()
    end
end


function love.mousepressed(x, y, button, istouch)
    if button == 1 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
        local cx, cy = cam:getTranslation()
        print("x = " .. (x - 160 + cx) ..", y = " .. (y - 120 + cy))
    end
end

function update_anims(current_time, dt)
    for _, value in ipairs(map)
    do
        -- stop render anim after 5 second
        if value.time <= current_time and current_time - value.time < 100 then
            value.isPlaying = true
            value.animation:update(dt)
        elseif current_time - value.time > 100 then
            value.isPlaying = false
        end
    end
end

function update_camera(current_time)
    local pre_node = nil;
    for k, v in ipairs(orbit)
    do
        if k == orbit_index + 1 then
            if v.time < current_time then
                orbit_index = orbit_index + 1
            end
            local time_scale = (current_time - pre_node.time) / (v.time - pre_node.time)
            cam:setTranslation(pre_node.x + time_scale * (v.x - pre_node.x), pre_node.y + time_scale * (v.y - pre_node.y))
            cam:scaleToPoint(pre_node.scale + time_scale * (v.scale - pre_node.scale), v.x, v.y)
            cam:update()
            break;
        end
        pre_node = v
    end
end

function love.update(dt)
    if start then
        local current_time = bgm:tell();
        update_camera(current_time)
        if not bgm:isPlaying() then
            love.audio.play(bgm)
            bgm:seek(bgm_index)
        end
        update_anims(current_time, dt)
    end
end



function draw_scene()
    local current_time = bgm:tell();
    for k, v in ipairs(scene) do
        if v.enter < current_time and v.exit > current_time then
            love.graphics.draw(v.ob, v.x, v.y, 0, v.scale_x, v.scale_y)
        end
    end
end

function draw_board()
    local cx, cy = cam:getTranslation()
    love.graphics.rectangle('fill',  cx + 70, cy + 60, 10, 240)
    love.graphics.rectangle('fill', cx + 80, cy + 50, 320, 10)
    love.graphics.rectangle('fill', cx + 400, cy + 60, 10, 240)
    love.graphics.rectangle('fill', cx + 80, cy + 300, 320, 10)
end

function draw_bg()
    local cx, cy = cam:getTranslation()
    love.graphics.draw(assets.texture("bg"), cx - 80, cy - 60);
end

function darw_anims()
    local cx, cy = cam:getTranslation()
    for _, value in ipairs(map)
    do
        if value.isPlaying then
            if value.folow_camera then
                value.animation:draw(value.x + cx, value.y + cy)
            else
                value.animation:draw(value.x, value.y)
            end
        end
    end
end

function love.draw()
    cam:push()
    draw_bg()
    draw_scene()
    draw_board()
    darw_anims()
    cam:pop()
end