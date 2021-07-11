local LocalPlayer = game.Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Grid = 3

local module = {}

module.setFilter = function(Part) 
	Mouse.TargetFilter = Part
end

module.GetXZ = function()
	local X = math.floor((Mouse.Hit.X + Grid / 2) / Grid) * Grid
	local Z = math.floor((Mouse.Hit.Z + Grid / 2) / Grid) * Grid

	return {X,Z}
end

return module
