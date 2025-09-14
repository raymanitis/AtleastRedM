RegisterNetEvent('hawk_sp_noti')
AddEventHandler('hawk_sp_noti', function(message, type)
    SendNUIMessage({
        action = "showNotification",
        message = message,
        type = type
    })
end)


-- RegisterCommand("testnotify", function()
--     TriggerEvent('hawk_sp_noti', "You have successfully caught a fish.!", "success")
--     Citizen.Wait(400)
--     TriggerEvent('hawk_sp_noti', "Loose fish! Please try again.", "error")
--     Citizen.Wait(400)
--     TriggerEvent('hawk_sp_noti', "Please wait until the fish bites the hook.", "info")
-- end, false)
