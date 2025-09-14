Config = {}
Config.framework = "vorp"--"redemrp" or "vorp" or "qbr" or "qbr2" or "redemrp-reboot" or "rsg"
Config.RefreshRate = 5
Config.ViewDistancePrayActivity = {
    ped = 20.0,
    ptfx = 20.0,
    object = 20.0,
}

Config.RobberyTime = {
    enable = false,
    time = {open = 18, close = 3},
}

Config.InteractionDist = 0.99
Config.GraveCheckDist = 6.0

Config.CustomAlert = false -- set true and change CustomAlert function in fw_func.lua for custom alert logic

Config.Prompts = {
    Prompt1 = 0x05CA7C52,
    Prompt2 = 0x156F7119,
    PromptCancel = 0x156F7119,
    PromptWork = 0xB28318C0,
}

Config.Marker = {
    rgba = {126, 0, 0, 100},
    size = {1.0, 1.0, 0.3},
    enable = true,
}

Config.Texts = {
    Prompt1 = "Dig",
    Prompt2 = "Pray",
    PromptCancel = "Cancel",
    PromptWork = "Dig",
    --TEXTS
    GraveRobbery = "Grave Robbery",
    Praying = "Praying",
    Grave = "Grave",
    --Notifications
    AlertP = "Grave Robbery reported! Check map for location!",
    AlreadyWork = "Someone is working on it already!",
    AlreadyRob = "Grave is already robbed, come back later!",
    NoShovel = "You dont have shovel to dig!",
    NoJob1 = "You can't start, restricted job!",
    NoJob2 = "You dont have the required job!",
    NoXP = "You dont have the required XP to start! (%s/%s)",
    Finished = "Grave robbery finished!",
    NoPolice = "Not enough Police Officer!",
    CantDig = "You cant dig this time, come back at other time!",
    --Webhook Extra
    W_Source = "Source",
    W_Id = "Identifiers",
    W_Grave = "Grave ID",
    W_Name = "Grave Name",
    W_Payment = "Payment",
    W_XP = "Earned XP",
    W_Items = "Items",
}

Config.Textures = {
    cross = {"scoretimer_textures", "scoretimer_generic_cross"},
    locked = {"menu_textures","stamp_locked_rank"},
    tick = {"scoretimer_textures","scoretimer_generic_tick"},
    money = {"inventory_items", "money_moneystack"},
    alert = {"menu_textures", "menu_icon_alert"},
}

Config.PoliceAlertAreaBlip = `BLIP_STYLE_PROC_MISSION_RADIUS`
Config.PoliceAlertAreaBlipModifier = `BLIP_MODIFIER_MP_TEAM_COLOR_3`
Config.DeleteAlertBlip = 30-- seconds after its created

Config.GraveShovel = "ricx_graveshovel"

Config.PrayAnim =  {
    {"amb_misc@world_human_pray_rosary@base", "base"},
    {"script_common@shared_scenarios@stand@random@town_burial@stand_mourn@male@react_look@loop@generic", "front"},
    {"amb_misc@world_human_grave_mourning@kneel@female_a@idle_a", "idle_a"},
    {"script_common@shared_scenarios@kneel@mourn@female@a@base", "base"},
    {"amb_misc@world_human_grave_mourning@female_a@idle_a", "idle_a"},
    {"amb_misc@world_human_grave_mourning@male_b@idle_c", "idle_g"},
    {"amb_misc@world_human_grave_mourning@male_b@idle_c", "idle_h"},
}

Config.DigAnim = {
    model = `p_shovel02x`,
    idle = {
        anim = {"amb_work@world_human_gravedig@working@male_b@react_look@loop@generic", "react_look_front_loop"},
        --attach:
        bone = "skel_r_hand",
        pos = vector3(0.05, -0.19, -0.04),
        rot = vector3(95.0, 180.0, -7.0),
    },
    work = {
        anim = {"amb_work@world_human_gravedig@working@male_b@idle_a", "idle_a"},
        --attach:
        bone = "skel_r_hand",
        pos = vector3(0.05, -0.19, -0.02),
        rot = vector3(90.0, 180.0, -12.0),
    },
    finish = {
        anim = {"amb_work@world_human_farmer_weeding@male_a@idle_c", "idle_g"},
        shovel_delete = 5, --seconds
    },
}

Config.Graves = {
    --Rhodes
    {
        name = "Elsie Feeney",
        coords = vector3(1282.042, -1242.295, 79.089),
        heading = 26.0788,
        required_xp = 0,
        earn_xp = 1,
        job = false,
        restricted_job = false,
        cooldown = 1,--minutes
        finish_mash_amount = 3,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
        pray_event = {
            type = "ped",
            time = {min = 22, max = 5},
            model = `a_c_crow_01`,
            pos = vector3(1280.387, -1239.093, 80.116),
            rot = vector3(0.0, 0.0, -132.180),
            alpha = 200,
            seconds_to_appear = 10,
            anim = {"amb_creatures_bird@world_crow_on_perch@idle", "idle_b"},
            extra_reward = {
                money = {min = 1, max = 2, multiplier = 1.0, chance = 80},
                items = {
                    {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 20},
                    {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 20},
                },
            },
        },
        police_requirement = {amount = 1, jobs = {"police", "police2"}},
    },
    {
        name = "Harvey Feeney",
        coords = vector3(1280.190, -1243.406, 78.821),
        heading = 26.999,
        required_xp = 0,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 2,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
        pray_event = {
            type = "ptfx",
            time = {min = 22, max = 5},
            pos = vector3(1280.387, -1239.093, 80.116),
            rot = vector3(0.0, 0.0, 0.0),
            ptfx = {"core", "ent_amb_light_message_fog"},
            scale = 1.0,
            seconds_to_appear = 10,
            extra_reward = {
                money = {min = 1, max = 2, multiplier = 1.0, chance = 80},
                items = {
                    {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 20},
                    {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 20},
                },
            },
        },
    },
    {
        name = "Nettie Mae Feeney",
        coords = vector3(1277.646, -1243.937, 78.741),
        heading = 28.891,
        required_xp = 0,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 5,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
        pray_event = {
            type = "object",
            time = {min = 22, max = 5},
            model = `p_humanskull02x`,
            pos = vector3(1276.287, -1241.390, 79.570),
            rot = vector3(1.816, -6.679, 43.20),
            alpha = 200,
            seconds_to_appear = 10,
            extra_reward = {
                money = {min = 1, max = 2, multiplier = 1.0, chance = 80},
                items = {
                    {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 20},
                    {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 20},
                },
            },
        },
    },
    {
        name = "Stephen Banks",
        coords = vector3(1273.183, -1238.915, 78.815),
        heading = 21.938,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Marietta Banks",
        coords = vector3(1275.114, -1237.997, 79.023),
        heading = 17.2695,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Charlie Banks",
        coords = vector3(1277.472, -1237.081, 79.283),
        heading = 22.858,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1277.429, -1231.219, 79.785),
        heading = 9.5856,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1273.790, -1229.006, 79.694),
        heading = 5.973,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1270.969, -1230.913, 79.355),
        heading = 11.065,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1267.327, -1232.056, 79.046),
        heading = 16.203,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Douglas Gray",
        coords = vector3(1268.745, -1228.923, 79.380),
        heading = 15.811,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Lucille Braithwaite",
        coords = vector3(1275.525, -1220.127, 80.520),
        heading = 18.769,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1271.028, -1224.483, 79.872),
        heading = 15.9214,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1272.812, -1224.395, 80.005),
        heading = 16.95,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1274.721, -1223.716, 80.262),
        heading = 22.049,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1279.936, -1214.892, 80.969),
        heading = 14.358,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1275.776, -1207.828, 81.602),
        heading = 192.68,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1292.837, -1214.911, 80.941),
        heading = 358.166,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1295.810, -1215.574, 80.651),
        heading = 14.873,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1298.355, -1214.914, 80.441),
        heading = 4.81563,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1297.090, -1212.736, 80.662),
        heading = 15.6860,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1295.598, -1213.070, 80.774),
        heading = 103.038,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1294.745, -1213.792, 80.816),
        heading = 17.239,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1292.806, -1211.421, 81.119),
        heading = 19.154,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1293.655, -1210.771, 81.090),
        heading = 11.1098,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1295.177, -1210.914, 80.934),
        heading = 28.956,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "William 'Willie' Bowley",
        coords = vector3(1302.913, -1214.625, 80.095),
        heading = 14.057,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1292.054, -1209.464, 81.374),
        heading = 24.189,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1290.816, -1210.013, 81.405),
        heading = 17.146,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
    {
        name = "Unknown",
        coords = vector3(1296.455, -1210.326, 80.860),
        heading = 26.106,
        required_xp = 100,
        earn_xp = 1,
        job = {"smuggler", "job2"},
        restricted_job = {"police", "police2"},
        cooldown = 10,--minutes
        finish_mash_amount = 10,
        reward = {
            money = {min = 1, max = 5, multiplier = 1.0, chance = 50},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50},
            },
        },
        alert = {
            at_start = {enable = true, chance = 80},
            at_finish = {enable = true, chance = 80},
            police_jobs = {"police1", "police2"},
        },
    },
}

--[[
    --REDEM:RP INVENTORY ITEM

    ["ricx_graveshovel"] = { label = "Graves Shovel", description = "Dig up Graves", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 5,imgsrc = "items/ricx_graveshovel.png", type = "item_standard",},

    --QBR/QR/RS ITEM
    ['ricx_graveshovel'] 					= {['name'] = 'ricx_graveshovel', 			 	  	['label'] = 'Graves Shovel',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_graveshovel.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Dig up Graves'},
	
]]
