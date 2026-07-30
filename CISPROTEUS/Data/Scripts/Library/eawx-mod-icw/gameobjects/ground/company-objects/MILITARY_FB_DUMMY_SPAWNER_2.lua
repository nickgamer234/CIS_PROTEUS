function Get_Bunker_Unit_Data()
	local Faction_Name = Object.Get_Owner().Get_Faction_Name()
	Faction_Name = string.lower(Faction_Name)
	local Bunker_Unit_Type = Object.Get_Type().Get_Name()
	local ProteusLibrary = require("ProteusWarlordLibrary")
	local Group = GlobalValue.Get("PROTEUS_GROUP_NAME")
	local Proteus_Bunker_Unit = require("eawx-mod-icw/gameobjects/ground/bunker/"..Faction_Name.."/default/"..Bunker_Unit_Type)
	if Group ~= nil then
		if ProteusLibrary[Group].CustomBunkerGarrison then
			Group = string.lower(Group)
			Proteus_Bunker_Unit = require("eawx-mod-icw/gameobjects/ground/bunker/"..Faction_Name.."/"..Group.."/"..Bunker_Unit_Type)
		end
	end

	return Proteus_Bunker_Unit.Spawn_Units
end

return {
	Spawn_Units = Get_Bunker_Unit_Data(),
	Scripts = {"company-spawn"},
}