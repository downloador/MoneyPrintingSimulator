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
	if Pos[1] > Min.X and Pos[1] < Max.X and Pos[2] > Min.Z and Pos[2] < Max.Z then
		return false
	end	
	
	return true
end 

module.isOccupied = function(Pos) 
	for _,v in pairs(workspace.PlacedInstances:GetChildren()) do
		if Pos:FuzzyEq(v.Position) then
			return true
		end
	end
end

return module
