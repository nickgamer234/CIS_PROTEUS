require("StandardFighterFunctions")

return {
	Evaluate_Fighters = function(native,suffix,owner,alias,techLevel,regime,flags,is_main_empire)		
		local fighter = "EARLY_SKIPRAY_SQUADRON"
		
		if Is_Amalgam(owner) then
			alias = native
		end
		
		if owner == "EMPIREOFTHEHAND" and native == "IMPERIAL" then
			alias = "IMPERIAL"
		end
		
		local simpletypes = {
			IMPERIAL = "SKIPRAY_SQUADRON",
			PENTASTAR = "ADVANCED_SKIPRAY_SQUADRON",
			GREATER_MALDROOD = "EARLY_SKIPRAY_SQUADRON",
			ERIADU_AUTHORITY = "EARLY_SKIPRAY_SQUADRON",
			REBEL = "SKIPRAY_SQUADRON",
			MANDALORIANS = "FIRESPRAY_GUNSHIP_SQUADRON",
			HUTT_CARTELS = "KRAYT_GUNSHIP_SQUADRON",
			YEVETHA = "SKIPRAY_SQUADRON"
		}
		local proteustypes = {
			YEVETHAN_PROTEUS = simpletypes.YEVETHA,
		}
		
		if simpletypes[owner] then
			fighter = simpletypes[owner]
		elseif simpletypes[alias] then
			fighter = simpletypes[alias]
		end
		
		if owner == "IMPERIAL_PROTEUS" then
			local group = GlobalValue.Get("PROTEUS_GROUP_NAME")
			if proteustypes[group] then
				fighter = proteustypes[group]
			end
		end

		if owner == "IMPERIAL_PROTEUS" then
            local proteus = GlobalValue.Get("PROTEUS_GROUP_NAME")
            if proteus == "CIS_PROTEUS" then
                fighter = "FIRESPRAY_GUNSHIP_SQUADRON"
			end
		end
		
		if suffix then
			fighter = fighter .. suffix
		end
		return fighter
	end
}