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

module.IsOutside = function(Min,Max,Pos)
	if Pos.X > Min.X and Pos.X < Max.X and Pos.Z > Min.Z and Pos.Z < Max.Z then
		return false
	end	
	
	return true
end 

return module
