local TEXTS = Config.Texts
local TEXTURES = Config.Textures
local notifSettings = {}
-----------------------------------------------------------------------------------------------------
local notifSettings = {
	[1] = {
		TEXTS.AntlerCall, TEXTS.NoAnimal, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[2] = {
		TEXTS.AntlerCall, TEXTS.NoJob, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
	[3] = {
		TEXTS.AntlerCall, TEXTS.NoItem, TEXTURES.alert[1], TEXTURES.alert[2], 3000,
	},
}

-----------------------------------------------------------------------------------------------------
function CallAntlerNotif(id, extra)
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
	TriggerEvent("Notification:ricx_antler", title, text, dict, texture, timer)--change this to a different notification logic if you want
end
-----------------------------------------------------------------------------------------------------
RegisterNetEvent("ricx_antler:call_notif", function(id, extra)
	local _id = tonumber(id)
	CallAntlerNotif(_id, extra)
end)
----------------------------Basic Notification----------------------------
RegisterNetEvent('Notification:ricx_antler', function(t1, t2, dict, txtr, timer)
    local _dict = tostring(dict)
    PrepareTexture(_dict)
    exports.ricx_antler.LeftNot(0, tostring(t1), tostring(t2), tostring(dict), tostring(txtr), tonumber(timer))
    SetStreamedTextureDictAsNoLongerNeeded(_dict)
end)
--------------------------------------------------------------------------------------------------------------------------------------------
