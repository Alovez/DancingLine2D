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
local rhythm = require("levels/level1/rhythm")
local Player = require("levels/level1/player")
local assets = require("assets")
local state=require("stateswitcher")

local bgm_index = 0;
local orbit_index = 1;
local bgm = 0;
local dong = 0;
local start = false
local pause = false
local gameover = false
local pause_page = 0
local gameover_page = 0
local gamepass_page = 0
local cam = Camera(320, 240, { x = 0, y = 0, resizable = false, maintainAspectRatio = true });
local life = 8
local cambo = 0
local current_key = 0
local player = 0
local hit_interval = 0.3;
local note_interval = 0.5;
local jump_height = 20;
local game_pass = false;

-- Event Call Back
function hitted()
    local current_time = bgm:tell()
    for _, v in ipairs(rhythm) do
        if v.status == 'idle' then
            if current_time > v.time - hit_interval and current_time < v.time + hit_interval then
                cambo = cambo + 1
                if cambo > 2 and life < 8 then
                    life = life + 1
                end
                v.status = 'success'
                bgm:setVolume(1)
            elseif current_time > v.time + hit_interval then
                v.status = 'false'
                life = life - 1
                cambo = 0
                bgm:setVolume(0.3)
            end
            break
        end
    end
end

function love.keypressed(key, scancode, isrepeat)
    if key == "escape" then
        love.event.quit()
    elseif key == "j" then
        dong:stop()
        dong:play()
        if gameover or game_pass then
            love.load()
        end
        if not start then
            start = true
        else
            hitted()
            player:jump(jump_height)
            print("{time = "..bgm:tell()..",")
            local cx, cy = cam:getTranslation()
            print("x = "..(cx + 240)..", y = "..(cy + 180).."},")
        end
    elseif key == 'return' then
        if pause then
            pause = false
        else
            bgm_index = bgm:tell()
            pause = true
        end
    elseif key == 'k' then
        if pause then
            love.load()
        end
    elseif key == "rctrl" then
        love.audio.pause(bgm)
        debug.debug()
    end
    current_key = key
end

function love.mousepressed(x, y, button, istouch)
    if button == 1 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
        local cx, cy = cam:getTranslation()
        print("x = " .. (x - 160 + cx) ..", y = " .. (y - 120 + cy))
    end
end

-- Load
function load_rhythm()
    for _, v in ipairs(rhythm) do
        v.status = "idle"
    end
end


function love.load()
    -- init player
    player = Player:new({}, 0, 0, 0.2, 0.2, 0.3)
    life = 8
    pause = false
    gameover = false
    start = false
    bgm_index = 0;
    -- init Music
    assets.load_sounds("sounds")
    bgm = assets.sound("level1")("static");
    bgm:stop()
    dong = assets.sound("dong")("static");
    -- init textures
    assets.load_textures("pic")
    pause_page = assets.texture("bg_pause")
    gameover_page = assets.texture("bg_gameover")
    gamepass_page = assets.texture("bg_gamepass")
    -- init rhythm
    load_rhythm()
    -- init global var
    start = false;
end


-- Update
function update_rhythm(current_time)
    local breaked = false
    for _, v in ipairs(rhythm) do
        if v.status == 'idle' and not breaked then
            breaked = true
            if v.time + hit_interval < current_time then
                v.status = 'false'
                life = life - 1
                cambo = 0
                bgm:setVolume(0.3)
            end
        end
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
    if start and not pause and not game_pass then
        local current_time = bgm:tell();
        update_camera(current_time)
        local cx, cy = cam:getTranslation()
        player:update(cx, cy, dt, current_time);
        update_rhythm(current_time)
        if not bgm:isPlaying() then
            love.audio.play(bgm)
            bgm:seek(bgm_index)
        end
        update_anims(current_time, dt)
        if current_time >= 194.625 then
            game_pass = true
        end
    elseif pause then
        bgm:pause()
    end
    if life <= 0 then
        gameover = true
    end
end

-- Draw
function draw_scene()
    local current_time = bgm:tell();
    for k, v in ipairs(scene) do
        if v.enter <= current_time and v.exit > current_time then
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
    love.graphics.print("Life: ".. life, cx + 80, cy + 60)
    love.graphics.print("Cambo: ".. cambo, cx + 80, cy + 70)
    love.graphics.print("Current Key: "..current_key, cx + 80, cy + 80)
end

function draw_bg()
    local cx, cy = cam:getTranslation()
    love.graphics.draw(assets.texture("bg"), cx - 80, cy - 60);
end

function draw_pause()
    local cx, cy = cam:getTranslation()
    love.graphics.draw(pause_page, cx - 80, cy - 60);
end

function draw_gameover()
    local cx, cy = cam:getTranslation()
    love.graphics.draw(gameover_page, cx - 80, cy - 60);
end

function draw_pass()
    local cx, cy = cam:getTranslation()
    love.graphics.draw(gamepass_page, cx - 80, cy - 60);
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

function darw_notes()
    local current_time = bgm:tell();
    for _, v in ipairs(rhythm) do
        if v.status == 'idle' then
            if current_time > v.time - note_interval and current_time < v.time + note_interval then
                math.randomseed(v.time)
                love.graphics.draw(assets.texture("note"), v.x + 10, v.y - math.random(0, jump_height - 5) - 10, 0, 0.5, 0.5)
            end
            break
        end
    end
end

function love.draw()
    cam:push()
    draw_bg()
    draw_scene()
    if start and not pause and not game_pass then
        draw_board()
        darw_anims()
        darw_notes()
        player:draw()
    elseif pause then
        draw_pause()
    elseif game_pass then
        draw_pass()
    end
    if gameover then
        bgm:stop()
        draw_gameover()
    end
    cam:pop()
end