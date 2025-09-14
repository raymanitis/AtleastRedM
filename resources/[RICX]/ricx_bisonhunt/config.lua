Config = {}
Config.framework = "redemrp-reboot"--"redemrp" or "vorp" or "qbr" or "qbr2" or "redemrp-reboot" or "rsg"
Config.RefreshRate = 5

Config.AdminIdentifiers = {
    "steam:3230030"
}


Config.Prompts = {
    Prompt1 = 0x05CA7C52,
}

Config.Marker = {
    rgba = {126, 0, 0, 100},
    size = {2.0, 2.0, 0.3},
    enable = true,
}

Config.Texts = {
    Prompt1 = "Start Hunt",
    --
    BisonHunt = "Bison Hunting",
    HuntPrice = "Hunt Price",
    --Notifications
    GoArea = "Go to area and look for the bisons!",
    NotPossible = "Hunt finished already, come back later!",
    NotPossible2 = "Hunt is started, come back later!",
    NoMoney = "You dont have enough money!",
    NoJob = "You dont have the required job!",
    Finished = "Hunt finished!",
}

Config.Textures = {
    cross = {"scoretimer_textures", "scoretimer_generic_cross"},
    locked = {"menu_textures","stamp_locked_rank"},
    tick = {"scoretimer_textures","scoretimer_generic_tick"},
    money = {"inventory_items", "money_moneystack"},
    alert = {"menu_textures", "menu_icon_alert"},
}

Config.BisonHunts = {
    ----------------------------------------------
    [1] = {
        name = "Bison Hunter",
        blip = {enable = true, sprite = `blip_mp_animal_tagging_bison`},
        coords = vector3(-910.406, -1363.464, 43.745),
        job = {"hunter", "job2"},
        price = 50,
        cooldown = 10, --minutes
        hunts = {
            --------------------------------------------------------------------------------------------
            [1] = {
                createped_isNetwork = true,
                timer = 50, --seconds
                bisons = {
                    {
                        name = "Bison 1",
                        pos = vector4(-1428.271, -1489.747, 88.108, -162.0),
                        preset = 0,
                        health = 100,
                        extraflags = {[370] = true},
                        animal_tuning_floats = {
                            [10] = 250.0,
                        },
                        animal_tuning_bools = {
                            [75] = true,
                        },
                        reward = {
                            money = {min = 1, max = 2, multiplier = 1.0, chance = 20},
                            items = {
                                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                            },
                        },
                    },
                    {
                        name = "Bison 2",
                        pos = vector4(-1419.934, -1486.315, 88.402, -158.0),
                        preset = 1,
                        health = 100,
                        extraflags = {[370] = true},
                        animal_tuning_floats = {
                            [10] = 250.0,
                        },
                        animal_tuning_bools = {
                            [75] = true,
                        },
                        reward = {
                            money = {min = 1, max = 2, multiplier = 1.0, chance = 20},
                            items = {
                                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                            },
                        },
                    },
                },
            },
            --------------------------------------------------------------------------------------------
            [2] = {
                createped_isNetwork = true,
                timer = 50, --seconds
                bisons = {
                    {
                        name = "Bison 1",
                        pos = vector4(-1428.271, -1489.747, 88.108, -162.0),
                        preset = 0,
                        health = 1500,
                        extraflags = {[370] = true},
                        animal_tuning_floats = {
                            [10] = 250.0,
                        },
                        animal_tuning_bools = {
                            [75] = true,
                        },
                        reward = {
                            money = {min = 1, max = 2, multiplier = 1.0, chance = 20},
                            items = {
                                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                            },
                        },
                    },
                    {
                        name = "Bison 2",
                        pos = vector4(-1419.934, -1486.315, 88.402, -158.0),
                        preset = 1,
                        health = 1500,
                        extraflags = {[370] = true},
                        animal_tuning_floats = {
                            [10] = 250.0,
                        },
                        animal_tuning_bools = {
                            [75] = true,
                        },
                        reward = {
                            money = {min = 1, max = 2, multiplier = 1.0, chance = 20},
                            items = {
                                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                            },
                        },
                    },
                    {
                        name = "Bison 3",
                        pos = vector4(-1413.091, -1487.864, 87.592, 148.0),
                        preset = 2,
                        health = 1500,
                        extraflags = {[370] = true},
                        animal_tuning_floats = {
                            [10] = 250.0,
                        },
                        animal_tuning_bools = {
                            [75] = true,
                        },
                        reward = {
                            money = {min = 1, max = 2, multiplier = 1.0, chance = 20},
                            items = {
                                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                            },
                        },
                    },
                    {
                        name = "Bison 4",
                        pos = vector4(-1421.879, -1500.066, 86.997, -98.0),
                        preset = 3,
                        health = 1500,
                        extraflags = {[370] = true},
                        animal_tuning_floats = {
                            [10] = 250.0,
                        },
                        animal_tuning_bools = {
                            [75] = true,
                        },
                        reward = {
                            money = {min = 1, max = 2, multiplier = 1.0, chance = 20},
                            items = {
                                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                            },
                        },
                    },
                },
            },
            --------------------------------------------------------------------------------------------
        },
    },
    ----------------------------------------------
}

--[[
    --REDEM:RP INVENTORY ITEM

    ["item"] = { label = "", description = "", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 50,imgsrc = "items/item.png", type = "item_standard",},

    --QBR/QR/RS ITEM
    ['item'] 					= {['name'] = 'item', 			 	  	['label'] = 'label',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'item.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'desc'},
	
]]
