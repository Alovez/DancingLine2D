--
-- Created by IntelliJ IDEA.
-- User: A
-- Date: 2019/8/31
-- Time: 16:20
-- Email: ruinand@live.com
--

local ase = require("ase")
local fs = require("fs")
local lg = love.graphics
local la = love.audio

local assets = {}
local textures = {}
local spritedatas = {}
local shaders = {}
local sounds = {}
local fonts = {}

local function extname(path)
    return path:match("^.+(%..+)$")
end

local function basename(path)
    return path:match("^[^.]*")
end

local function glob(dir, f)

    for _, file in ipairs(fs.readdir(dir)) do

        local ext = extname(file)
        local name = basename(file)
        local path = dir .. "/" .. file

        f(name, ext, path)

    end

end

function assets.load_textures(dir)

    glob(dir, function(name, ext, path)
        if ext == ".png" or ext == ".jpg" then
            textures[name] = lg.newImage(path)
        end
    end)

end

function assets.load_spritedatas(dir)

    glob(dir, function(name, ext, path)
        if ext == ".json" then
            spritedatas[name] = ase.load_spritesheet(fs.read(path))
        end
    end)

end

function assets.load_shaders(dir)

    glob(dir, function(name, ext, path)

        if ext == ".glsl" then

            shaders[name] = function()
                return lg.newShader(path)
            end

        elseif ext == ".frag" then

            local vert_path = dir .. "/" .. name .. ".vert"

            if fs.is_file(vert_path) then
                shaders[name] = function()
                    lg.newShader(vert_path, path)
                end
            else
                shaders[name] = function()
                    return lg.newShader(path)
                end
            end

        end

    end)

end

function assets.load_fonts(dir)
    glob(dir, function(name, ext, path)
        if ext == ".ttf" or ext == ".otf" then
            fonts[name] = function(size, hint)
                return lg.newFont(path, size, hint)
            end
        end
    end)
end

function assets.load_sounds(dir)
    glob(dir, function(name, ext, path)
        if ext == ".ogg" or ext == ".wav" or ext == ".mp3" then
            sounds[name] = function(t)
                return la.newSource(path, t)
            end
        end
    end)
end

function assets.load_sprites(dir)
    assets.load_textures(dir)
    assets.load_spritedatas(dir)
end

function assets.texture(name)
    return textures[name]
end

function assets.spritedata(name)
    return spritedatas[name]
end

function assets.shader(name)
    return shaders[name]()
end

function assets.sound(name)
    return sounds[name]
end

function assets.font(name)
    return fonts[name]
end

return assets

