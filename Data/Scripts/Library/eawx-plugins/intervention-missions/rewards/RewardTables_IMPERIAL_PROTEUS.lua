function Get_RewardTable()
	local ProteusLibrary = require("ProteusWarlordLibrary")
	local Group = GlobalValue.Get("PROTEUS_GROUP_NAME")
	local Proteus_RewardTables = require("eawx-plugins/intervention-missions/rewards/proteus-reward-tables/IMPERIAL_PROTEUS")
	if ProteusLibrary[Group].CustomRewardTable then
		Proteus_RewardTables = require("eawx-plugins/intervention-missions/rewards/proteus-reward-tables/"..Group)
	end
	return Proteus_RewardTables
end

return Get_RewardTable()