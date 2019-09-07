-- wengwengweng

local fs = {}
local lf = love.filesystem

fs.read = lf.read
fs.write = lf.write
fs.remove = lf.remove
fs.append = lf.append
fs.mkdir = lf.createDirectory
fs.readdir = lf.getDirectoryItems

function fs.exists(p)
	return lf.getInfo(p) ~= nil
end

function fs.is_dir(p)
	local info = lf.getInfo(p)
	return info ~= nil and info.type == "directory"
end

function fs.is_file(p)
	local info = lf.getInfo(p)
	return info ~= nil and info.type == "file"
end

function fs.identity(id)
	if id then
		lf.setIdentity(id)
	end
	return lf.getIdentity()
end

function fs.save_dir()
	return lf.getSaveDirectory()
end

function fs.user_dir()
	return lf.getUserDirectory()
end

return fs

