-- wengwengweng

local json = require("json")
local ase = {}

function ase.load_spritesheet(data)

	local framelist = {}
	local anims = {}

	local data = json.decode(data)

	if not data then
		return {}
	end

	local w = data.meta.size.w
	local h = data.meta.size.h

	for i, frame in ipairs(data.frames) do

		local f = frame.frame

		framelist[i] = {
			x = f.x / w,
			y = f.y / h,
			w = f.w / w,
			h = f.h / h,
		}

	end

	if data.meta.frameTags then

		for i, f in ipairs(data.meta.frameTags) do

			if f.direction == "reverse" then
				f.from, f.to = f.to, f.from
			end

			anims[f.name] = {
				from = f.from + 1,
				to = f.to + 1,
			}

		end

	end

	return {
		framelist = framelist,
		anims = anims,
	}

end

return ase

