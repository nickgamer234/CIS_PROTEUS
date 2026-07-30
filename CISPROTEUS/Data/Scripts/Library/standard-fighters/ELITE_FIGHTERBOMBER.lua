require("StandardFighterFunctions")

return {
	Evaluate_Fighters = function(native,suffix,owner,alias,techLevel,regime,flags,is_main_empire)		
		local fighter = ""
		if Is_Amalgam(owner) or owner == "HUTT_CARTELS" or owner == "REBEL" then
			fighter = "ARC_170_SQUADRON"
		elseif owner == "CORPORATE_SECTOR" then
			fighter = "PREYBIRD_SQUADRON"
		else
			fighter = "TIE_DEFENDER_SQUADRON"
		end
		
		if owner == "EMPIREOFTHEHAND" and native == "IMPERIAL" then
			alias = native
		end

		if is_main_empire then
			if regime == 4 then
				fighter = "SHADOW_DROID_HEAVY_SQUADRON"
			end
		end

		if owner == "IMPERIAL_PROTEUS" then
            local proteus = GlobalValue.Get("PROTEUS_GROUP_NAME")
            if proteus == "CIS_PROTEUS" then
                fighter = "ARC_170_SQUADRON"
			end
		end
		
		if suffix then
			fighter = fighter .. suffix
		end
		return fighter
	end
}