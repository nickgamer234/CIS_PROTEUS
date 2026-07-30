require("StandardFighterFunctions")

return {
	Evaluate_Fighters = function(native,suffix,owner,alias,techLevel,regime,flags,is_main_empire)		
		local double = false
		local fighter = "T_WING_SQUADRON"
		
		if Is_Amalgam(owner) then
			alias = native
		end
		
		if owner == "EMPIREOFTHEHAND" and native == "IMPERIAL" then
			alias = native
		end
		
		local simpletypes = {
			IMPERIAL = "V38_SQUADRON",
			ZSINJ_EMPIRE = "TIE_X7_SQUADRON",
			ERIADU_AUTHORITY = "TIE_X7_SQUADRON",
			REBEL = "A_WING_SQUADRON",
			EMPIREOFTHEHAND = "SCARSSIS_SQUADRON",
			HAPES_CONSORTIUM = "HOUSE_MIYTIL_FIGHTER_SQUADRON",
			CORPORATE_SECTOR = "T_WING_SQUADRON",
			HUTT_CARTELS = "CLOAKSHAPE_NEW_SQUADRON",
			MANDALORIANS = "AGGRESSOR_ASSAULT_FIGHTER_SQUADRON"
		}
		
		if simpletypes[owner] then
			fighter = simpletypes[owner]
		elseif simpletypes[alias] then
			fighter = simpletypes[alias]
		end
		
		if owner == "REBEL" then
			local test = Find_First_Object("TALLON_SILENT_WATER")
			if TestValid(test) then
				double = true
			end
		end 

		if owner == "IMPERIAL_PROTEUS" then
            local proteus = GlobalValue.Get("PROTEUS_GROUP_NAME")
            if proteus == "CIS_PROTEUS" then
                fighter = "AGGRESSOR_ASSAULT_FIGHTER_SQUADRON"
			end
		end
		
		if double then
			suffix = Double_Suffix(suffix)
		end
		if suffix then
			fighter = fighter .. suffix
		end
		return fighter
	end
}