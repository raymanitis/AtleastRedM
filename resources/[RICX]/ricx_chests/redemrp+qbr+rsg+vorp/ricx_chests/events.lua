local TEXTS = Config.Texts
local TEXTURES = Config.Textures
local notifSettings = {}
-----------------------------------------------------------------------------------------------------
local notifSettings = {
	[1] = {
		TEXTS.Chest, TEXTS.NoAround, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[2] = {
		TEXTS.Chest, TEXTS.GoCloser, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[3] = {
		TEXTS.Chest, TEXTS.ChestIsLocked, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[4] = {
		TEXTS.Chest, TEXTS.WaitSome, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[5] = {
		TEXTS.Chest, TEXTS.CantDo, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[6] = {
		TEXTS.Chest, TEXTS.ChestIsUnlocked, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[7] = {
		TEXTS.Chest, TEXTS.WaitBefore, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[8] = {
		TEXTS.Chest, TEXTS.ChestUnlock, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[9] = {
		TEXTS.Chest, TEXTS.ChestLock, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[10] = {
		TEXTS.Chest, TEXTS.NotOwned, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[11] = {
		TEXTS.Chest, TEXTS.ChestUnlock2, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[12] = {
		TEXTS.Chest, TEXTS.MissShovel, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[13] = {
		TEXTS.Chest, TEXTS.NoChest, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[14] = {
		TEXTS.Chest, TEXTS.LimitReached, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[15] = {
		TEXTS.Chest, TEXTS.ChestPlaced, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[16] = {
		TEXTS.Chest, TEXTS.WalkAway, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[17] = {
		TEXTS.Chest, TEXTS.TooClose, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[18] = {
		TEXTS.Chest, TEXTS.NoAmmo, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[19] = {
		TEXTS.Chest, TEXTS.NoWeapon, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[20] = {
		TEXTS.Chest, TEXTS.UnlockedAlready, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[21] = {
		TEXTS.Chest, TEXTS.DigFinish, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[22] = {
		TEXTS.Chest, TEXTS.CantPlaceHere, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[23] = {
		TEXTS.Chest, TEXTS.MissAxe, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[24] = {
		TEXTS.Chest, TEXTS.ChestDestroyed, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	--[[
	[] = {
		TEXTS.TEXT, TEXTS.Saved, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
]]
}

-----------------------------------------------------------------------------------------------------
function CallChestsNotif(id, extra)
	local _id = tonumber(id)
	local title = notifSettings[_id][1]
	local text = notifSettings[_id][2]
	local dict = notifSettings[_id][3]
	local texture = notifSettings[_id][4]
	local timer = notifSettings[_id][5]

------------------EXTRA CODE START------------------
	if extra ~= nil then 						 --|
		if extra.title ~= nil then 				 --|
			title = extra.title					 --|
		end									 	 --|
		if extra.text ~= nil then 				 --|
			text = extra.text					 --|
		end										 --|
		if extra.dict ~= nil then 				 --|
			dict = extra.dict					 --|
		end										 --|
		if extra.texture ~= nil then 			 --|
			texture = extra.texture				 --|
		end										 --|
		if extra.timer ~= nil then 				 --|
			timer = extra.timer					 --|
		end										 --|
	end											 --|
------------------EXTRA CODE END------------------
	TriggerEvent("Notification:ricx_chests", title, text, dict, texture, timer)--change this to a different notification logic if you want
end
-----------------------------------------------------------------------------------------------------
RegisterNetEvent("ricx_chests:call_notif", function(id, extra)
	local _id = tonumber(id)
	CallChestsNotif(_id, extra)
end)
----------------------------Basic Notification----------------------------
RegisterNetEvent('Notification:ricx_chests', function(t1, t2, dict, txtr, timer)
    local _dict = tostring(dict)
    PrepareTexture(_dict)
    exports.ricx_chests.LeftNot(0, tostring(t1), tostring(t2), tostring(dict), tostring(txtr), tonumber(timer))
    SetStreamedTextureDictAsNoLongerNeeded(_dict)
end)
--------------------------------------------------------------------------------------------------------------------------------------------
