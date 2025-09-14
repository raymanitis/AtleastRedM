local TEXTS = Config.Texts
local TEXTURES = Config.Textures
local notifSettings = {}
-----------------------------------------------------------------------------------------------------
local notifSettings = {
	[1] = {
		TEXTS.GraveRobbery, TEXTS.AlertP, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[2] = {
		TEXTS.GraveRobbery, TEXTS.AlreadyWork, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[3] = {
		TEXTS.GraveRobbery, TEXTS.AlreadyRob, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[4] = {
		TEXTS.GraveRobbery, TEXTS.NoShovel, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[5] = {
		TEXTS.GraveRobbery, TEXTS.NoJob1, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[6] = {
		TEXTS.GraveRobbery, TEXTS.NoJob2, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[7] = {
		TEXTS.GraveRobbery, TEXTS.NoXP, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[8] = {
		TEXTS.GraveRobbery, TEXTS.Finished, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[9] = {
		TEXTS.GraveRobbery, TEXTS.NoPolice, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[10] = {
		TEXTS.GraveRobbery, TEXTS.CantDig, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	
	--[[
	[] = {
		TEXTS.TEXT, TEXTS.Saved, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
]]
}

-----------------------------------------------------------------------------------------------------
function CallGraveNotif(id, extra)
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
	TriggerEvent("Notification:ricx_graverobbery", title, text, dict, texture, timer)--change this to a different notification logic if you want
end
-----------------------------------------------------------------------------------------------------
RegisterNetEvent("ricx_graverobbery:call_notif", function(id, extra)
	local _id = tonumber(id)
	CallGraveNotif(_id, extra)
end)
----------------------------Basic Notification----------------------------
RegisterNetEvent('Notification:ricx_graverobbery', function(t1, t2, dict, txtr, timer)
    local _dict = tostring(dict)
    PrepareTexture(_dict)
    exports.ricx_graverobbery.LeftNot(0, tostring(t1), tostring(t2), tostring(dict), tostring(txtr), tonumber(timer))
    SetStreamedTextureDictAsNoLongerNeeded(_dict)
end)
--------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('Notification:ricx_graverobbery_reward', function(text, dict, icon, text_color, duration)
    PrepareTexture(dict)
    exports.ricx_graverobbery.RightNot(0, text, dict, icon, text_color, duration)
    SetStreamedTextureDictAsNoLongerNeeded(dict)
end)

--------------------------------------------------------------------------------------------------------------------------------------------
