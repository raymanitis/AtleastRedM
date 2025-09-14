Config = {}
Config.framework = "redemrp-reboot"--"redemrp" or "vorp" or "qbr" or "qbr2" or "redemrp-reboot" or "rsg"

Config.ViewDistanceObject = 70.0
Config.CooldownAmount = 10
Config.InteractionDistance = 1.2
Config.AdminIdentifiers = {
    "steam:3230030"
}

Config.GiveChestItemBackAtRemove = false

Config.StashSizes = {
    ["redemrp"] = false,--no stash size in redemrp 2.0
    ["redemrp-reboot"] = 500,
    ["rsg"] =  {maxweight = 10000, slots = 20},
    ["qbr"] =  {maxweight = 10000, slots = 20},
    ["qbr2"] =  {maxweight = 10000, slots = 20},
    ["vorp"] = 500,
}

Config.Prompts = {
    PromptOpen = 0x05CA7C52,
    PromptPlace = 0x05CA7C52,
    PromptCancel = 0x308588E6, 
    PromptRotate = 0x62800C92,
    PromptRotate2 = 0x8BDE7443,
    PromptHammer = 0x07B8BEAF,
    PromptBury = 0x308588E6,
    PromptShovel = 0x07B8BEAF,
    PromptShoot = 0x07B8BEAF,
    PromptLock = 0xD9D0E1C0,
    PromptDestroy = 0x43DBF61F,
    PromptDestroy2 = 0x07B8BEAF,
}

Config.Marker = {
    rgba = {126, 0, 0, 100},
    size = {2.0, 2.0, 0.3},
    enable = true,
}

Config.Texts = {
    PromptOpen = "Open",
    PromptPlace = "Place",
    PromptCancel = "Cancel",
    PromptRotate = "Rotate",
    PromptRotate2 = "Rotate",
    PromptHammer = "Hit",
    PromptMove = "Move",
    PromptBury = "Bury",
    PromptUnBury = "Unbury",
    PromptShovel = "Shovel",
    PromptShoot = "Shoot Lock",
    PromptLock = "Chest Lock",
    PromptDestroy = "Destroy",
    --TEXTS
    Chest = "Chest",
    LastHit = "Last Hit",
    NoAround = "Make sure noone is around you to open!",
    GoCloser = "Go closer to chest!",
    ChestIsLocked = "Chest is locked!",
    WaitSome = "You cant do that now, wait some time!",
    CantDo = "You cant do that!",
    ChestIsUnlocked = "Chest is already unlocked!",
    WaitBefore = "You have to wait some time before doing again!",
    ChestUnlock = "Chest is unlocked now!",
    ChestLock = "Chest is locked now!",
    NotOwned = "You dont own this Chest!",
    ChestUnlock2 = "Great Shot! Chest is unlocked now!",
    MissShovel = "You dont have Shovel to Dig!",
    NoChest = "You dont have Chest item!",
    LimitReached = "Chest Limit reached!",
    ChestPlaced = "Chest placed successfully!",
    WalkAway = "Walk a little bit away for shooting!",
    TooClose = "You are too close for shooting!",
    NoAmmo = "You need more ammo for shooting!",
    NoWeapon = "You need a Gun first!",
    UnlockedAlready = "Chest is already unlocked!",
    DigFinish = "Digging finished!",
    CantPlaceHere = "You cant place it here, find another spot!",
    MissAxe = "You are missing the Axe!",
    ChestDestroyed = "Chest is destroyed!",
    --Webhooks
    W_Source = "Source",
    W_Id = "Identifiers",
    W_ChestID = "Chest ID",
    W_ChestIDL = "Chest Locker",
    W_Locked = "Lock",
    W_Buried = "Buried Status",
    
}

Config.Textures = {
    cross = {"scoretimer_textures", "scoretimer_generic_cross"},
    locked = {"menu_textures","stamp_locked_rank"},
    tick = {"scoretimer_textures","scoretimer_generic_tick"},
    money = {"inventory_items", "money_moneystack"},
    alert = {"menu_textures", "menu_icon_alert"},
}

Config.DisableKeysWhilePlace = {
    --add here control keys to disable
    0xD9D0E1C0,
    0xCEFD9220,
}

Config.HammerMashAmount = 2 
Config.MaxChestsPerPlayer = 10

Config.AllowedBuryInteriors = {
    [0] = true,
    --add here more game engine map interior IDs where players can bury
}

Config.Bury = {
    required_item = {item = "chest_shovel", amount = 1, remove = false},
    mash_amount = 2,
    remove_data = {model = `p_shovel02x`, attach = {bone = "skel_r_hand", pos = vector3(0.02, -0.09, -0.05), rot = vector3(82.0, 2.0, 166.0)}, anim = {"amb_work@world_human_gravedig@working@male_b@react_look@loop@generic", "react_look_front_loop"}, anim2 = {"amb_work@world_human_gravedig@working@male_b@idle_a", "idle_a", 3000}},
}

Config.Destroy = {
    required_item = {item = "axe_barricade", amount = 1, remove = false},
    mash_amount = 2,
}

Config.LockOpenBullets = 10

Config.Chests = {
    r_chest1 = {
        item = "r_chest1",
        name = "Chest 1",
        model = `mp006_s_lootablechest03x`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },
    r_chest2 = {
        item = "r_chest2",
        name = "Chest 2",
        model = `p_storagebox01x`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },
    r_chest3 = {
        item = "r_chest3",
        name = "Chest 3",
        model = `mp009_p_mp_ammochest01x`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },
    r_chest4 = {
        item = "r_chest4",
        name = "Chest 4",
        model = `mp009_p_mp_chestornate01x`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },
    r_chest5 = {
        item = "r_chest5",
        name = "Chest 5",
        model = `p_chestmedbin01x`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },
    r_chest6 = {
        item = "r_chest6",
        name = "Chest 6",
        model = `p_chestmedburied01x`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },
    r_chest7 = {
        item = "r_chest7",
        name = "Chest 7",
        model = `p_chestmedhunt01x`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },
    r_chest8 = {
        item = "r_chest8",
        name = "Chest 8",
        model = `p_chestmedice01x`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },
    r_chest9 = {
        item = "r_chest9",
        name = "Chest 9",
        model = `p_chestmedlog01x`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },
    r_chest10 = {
        item = "r_chest10",
        name = "Chest 10",
        model = `p_chestmedproduce01x`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },
    r_chest11 = {
        item = "r_chest11",
        name = "Chest 11",
        model = `p_chestmedwilderness01x`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },
    r_chest12 = {
        item = "r_chest12",
        name = "Chest 12",
        model = `s_cvan_chest02`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 10,
            ["rsg"] =  {maxweight = 1000, slots = 5},
            ["qbr"] =  {maxweight = 1000, slots = 5},
            ["qbr2"] =  {maxweight = 1000, slots = 5},
            ["vorp"] = 10,
        },
    },
    r_chest13 = {
        item = "r_chest13",
        name = "Chest 13",
        model = `s_miscchest_loot`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },
    r_chest14 = {
        item = "r_chest14",
        name = "Chest 14",
        model = `s_rustedchest01x`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },
    r_chest15 = {
        item = "r_chest15",
        name = "Chest 15",
        model = `s_waterloggedchest01x`,
        stash_size = {
            ["redemrp"] = false,--no stash size in redemrp 2.0
            ["redemrp-reboot"] = 50,
            ["rsg"] =  {maxweight = 2500, slots = 10},
            ["qbr"] =  {maxweight = 2500, slots = 10},
            ["qbr2"] =  {maxweight = 2500, slots = 10},
            ["vorp"] = 50,
        },
    },    
}


--[[
    --REDEM:RP INVENTORY ITEM

    ["r_chest1"] = { label = "Chest 1", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest1.png", type = "item_standard",},
    ["r_chest2"] = { label = "Chest 2", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest2.png", type = "item_standard",},
    ["r_chest3"] = { label = "Chest 3", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest3.png", type = "item_standard",},
    ["r_chest4"] = { label = "Chest 4", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest4.png", type = "item_standard",},
    ["r_chest5"] = { label = "Chest 5", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest5.png", type = "item_standard",},
    ["r_chest6"] = { label = "Chest 6", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest6.png", type = "item_standard",},
    ["r_chest7"] = { label = "Chest 7", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest7.png", type = "item_standard",},
    ["r_chest8"] = { label = "Chest 8", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest8.png", type = "item_standard",},
    ["r_chest9"] = { label = "Chest 9", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest9.png", type = "item_standard",},
    ["r_chest10"] = { label = "Chest 10", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest10.png", type = "item_standard",},
    ["r_chest11"] = { label = "Chest 11", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest11.png", type = "item_standard",},
    ["r_chest12"] = { label = "Chest 12", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest12.png", type = "item_standard",},
    ["r_chest13"] = { label = "Chest 13", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest13.png", type = "item_standard",},
    ["r_chest14"] = { label = "Chest 14", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest14.png", type = "item_standard",},
    ["r_chest15"] = { label = "Chest 15", description = "Place for storage", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/r_chest15.png", type = "item_standard",},

    ["chest_shovel"] = { label = "Shovel", description = "Bury/unbury Chests", weight = 0.05, canBeDropped = true, canBeUsed = false, requireLvl = 0, limit = 5,imgsrc = "items/chest_shovel.png", type = "item_standard",},
    

    --QBR/QR/RS ITEM
    ['r_chest1'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 1',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest1.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest2'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 2',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest2.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest3'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 3',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest3.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest4'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 4',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest4.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest5'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 5',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest5.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest6'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 6',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest6.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest7'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 7',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest7.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest8'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 8',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest8.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest9'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 9',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest9.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest10'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 10',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest10.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest11'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 11',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest11.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest12'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 12',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest12.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest13'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 13',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest13.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest14'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 14',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest14.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},
    ['r_chest15'] 					= {['name'] = 'item', 			 	  	['label'] = 'Chest 15',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'r_chest15.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Place for storage'},

    ['chest_shovel'] 					= {['name'] = 'item', 			 	  	['label'] = 'Shovel',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'chest_shovel.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Bury/unbury Chests'},

]]
