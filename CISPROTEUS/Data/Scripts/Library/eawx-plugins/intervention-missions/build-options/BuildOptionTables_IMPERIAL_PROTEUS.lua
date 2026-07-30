function Get_BuildTable()
	local ProteusLibrary = require("ProteusWarlordLibrary")
	local Group = GlobalValue.Get("PROTEUS_GROUP_NAME")
	local Proteus_BuildTable = require("eawx-plugins/intervention-missions/build-options/proteus-builds/BuildOptionTables_IMPERIAL_PROTEUS")
	if ProteusLibrary[Group].CustomBuildsTable then
		Proteus_BuildTable = require("eawx-plugins/intervention-missions/build-options/proteus-builds/BuildOptionTables_"..Group)
	end
	return Proteus_BuildTable
end

return Get_BuildTable()