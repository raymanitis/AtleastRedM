Config = Config or {}

Config.Locale = "en"

Config.Debug = false -- Enable debug logging

Config.XPSystems = {
    gum_crafting = true,
    syn_crafting = false,
    vorp_crafting = false
}

Config.Commands = {
    { name = "pickupforge", permission = nil }, -- No permission required, restricted by job
    { name = "removeforge", permission = "command.removeforge" } -- Requires ACE permission
}

Config.MaxSmeltAmount = 50 -- Default to 10
Config.PromptRadius = 1 -- How close player must be to see prompt (in meters)
Config.BlacksmithProfessionName = "Blacksmith" -- Set the profession name that should receive XP for smelting

Config.ForgeSpawns = {
    {
        model = "p_forge01x",
        coords = vector4(-367.8866271972656, 799.8142700195312, 115.18183898925781, -170.2418670654297)
    },
    {
        model = "p_forge01x",
        coords = vector4(1440.1878662109375, 275.1000061035156, 89.31185150146484, 97.43714904785156)
    },
    {
        model = "p_forge01x",
        coords = vector4(-5544.22607421875, -2935.556640625, -2.1098880767822266, 199.75022888183594)
    },
    {
        model = "p_forge01x",
        coords = vector4(2697.7841796875, -1290.5238037109375, 48.59558868408203, 262.81695556640625)
    },
    {
        model = "p_forge01x",
        coords = vector4(-2444.0185546875, -2435.226318359375, 59.172306060791016, 11.560829162597656)
    },
    {
        model = "p_forge01x",
        coords = vector4(-1423.8095703125, -2670.423095703125, 40.76789855957031, -145.5076141357422)
    },
}

Config.ForgePropModel = "p_forge01x"
Config.UsePropDetection = true
Config.ForgeSearchRadius = 1.1

Config.AllowedJobs = {
    "anneblacksmith",
    "armablacksmith",
    "bwblacksmith",
    "tblblacksmith",
    "dakotablacksmith",
    "dewberryblackismith",
    "emeraldblacksmith",
    "mcfblacksmith",
    "sdblacksmith",
    "strawblacksmith",
    "twblacksmith",
    "valblacksmith",
    "vanhornblacksmith",
    "gov"
}

Config.ProfessionLevels = {
    ["Blacksmith"] = {
        [1] = 0,
        [2] = 1500,
        [3] = 3000,
        [4] = 4500,
        [5] = 6000,
        [6] = 7500,
        [7] = 9000,
        [8] = 10500,
        [9] = 12000,
        [10] = 13500,
        [11] = 14999
    }
}

Config.BlacksmithRanks = {
    { xp = 3000,  title = "Professional" },
    { xp = 6000,  title = "Master" },
    { xp = 10000, title = "Grand Master" },
    { xp = 15000, title = "Supreme Grand Master" }
}

Config.Tools = {
    tool_hammer_blacksmith = {
        durability = 100,
        label = "Blacksmith Hammer",
        durabilityLoss = 2
    }
}

Config.SmeltingRecipes = {
    ["iron"] = {
        label = "Iron Ore",
        requiredAmount = 1,
        barItem = "ironbar",
        barItemLabel = "Iron Bar",
        rewardAmount = 1,
        bonusItem = "scrap_metal",
        bonusItemLabel = "Scrap Metal",
        bonusRewardAmount = 0.3, -- 30% chance to get bonus scrap metal
        xpReward = 1,
        duration = 3000,
        fuel = {
            item = "coal",
            amountPerCraft = 1
        },
        tools = { "tool_hammer_blacksmith" }
    },
    ["copper"] = {
        label = "Copper Ore",
        requiredAmount = 1,
        barItem = "copperbar",
        barItemLabel = "Copper Bar",
        rewardAmount = 1,
        bonusItem = "scrap_metal",
        bonusItemLabel = "Scrap Metal",
        bonusRewardAmount = 0.3,
        xpReward = 1,
        duration = 3000,
        fuel = {
            item = "coal",
            amountPerCraft = 1
        },
        tools = { "tool_hammer_blacksmith" }
    },
    ["goldnugget"] = {
        label = "Gold Ore",
        requiredAmount = 1,
        barItem = "goldbar",
        barItemLabel = "Gold Bar",
        rewardAmount = 1,
        bonusItem = "scrap_metal",
        bonusItemLabel = "Scrap Metal",
        bonusRewardAmount = 0.3,
        xpReward = 1,
        duration = 3000,
        fuel = {
            item = "coal",
            amountPerCraft = 1
        },
        tools = { "tool_hammer_blacksmith" }
    },
    ["silverore"] = {
        label = "Silver Ore",
        requiredAmount = 1,
        barItem = "silverbar",
        barItemLabel = "Silver Bar",
        rewardAmount = 1,
        bonusItem = "scrap_metal",
        bonusItemLabel = "Scrap Metal",
        bonusRewardAmount = 0.3,
        xpReward = 1,
        duration = 3000,
        fuel = {
            item = "coal",
            amountPerCraft = 1
        },
        tools = { "tool_hammer_blacksmith" }
    },
    ["scrap_metal"] = {
        label = "Scrap Metal",
        requiredAmount = 10,
        barItem = "ironbar",
        barItemLabel = "Iron Bar",
        rewardAmount = 1,
        bonusItem = nil,
        bonusItemLabel = nil,
        bonusRewardAmount = 0,
        xpReward = 0,
        duration = 12000,
        fuel = {
            item = "coal",
            amountPerCraft = 1
        },
        maxCraftAmount = 5,
        tools = { "tool_hammer_blacksmith"}
    },
}