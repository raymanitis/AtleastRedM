Config = {}
Config.framework = "redemrp-reboot"--"redemrp" or "vorp" or "qbr" or "qbr2" or "redemrp-reboot" or "rsg"
Config.RefreshRate = 1
Config.Debug = false 

Config.Prompts = {
    PromptCall = 0x07B8BEAF,
    PromptCancel = 0x308588E6,
}

Config.Texts = {
    PromptCall = "Call",
    PromptCancel = "Cancel",
    --TEXTS
    Antler = "Buck Antler",
    AntlerCall = "Antler Call",
    NoAnimal = "No animal around you!",
    NoItem = "You dont have Buck Antler!",
    NoJob = "You dont have the required job!",
}

Config.Textures = {
    cross = {"scoretimer_textures", "scoretimer_generic_cross"},
    locked = {"menu_textures","stamp_locked_rank"},
    tick = {"scoretimer_textures","scoretimer_generic_tick"},
    money = {"inventory_items", "money_moneystack"},
    alert = {"menu_textures", "menu_icon_alert"},
}

Config.Antler = {
    item = {id = "ricx_antler", label = "Buck Antler"},
    job = {"hunter", "job2"},
    remove_item_at_use = false,
    animal_models = {
        [`a_c_buck_01`] = true,
        [`a_c_elk_01`] = true,
    },
    call_radius = 40.0,
    animal_call_reset = 20, --seconds | Animal wont listen to New Call until not reseted
}

Config.DisableKeysWhileAntlerUsed = {
    -- add here more control hashes to disable
    -- 0x0321, --example
}

--[[
    --REDEM:RP INVENTORY ITEM

    ["ricx_antler"] = { label = "Buck Antler", description = "Attracts bucks/elks", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 50,imgsrc = "items/ricx_antler.png", type = "item_standard",},

    --QBR/QR/RS ITEM
    ['ricx_antler'] 					= {['name'] = 'ricx_antler', 			 	  	['label'] = 'Buck Antler',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_antler.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Attract bucks/elks'},
	
]]
