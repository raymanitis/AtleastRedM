local loadingProgress = 0
local maxProgress = 100

-- Simulate loading progress
Citizen.CreateThread(function()
    while loadingProgress < maxProgress do
        Citizen.Wait(100) -- Update every 100ms for smooth progress
        
        -- Simulate different loading phases
        if loadingProgress < 20 then
            loadingProgress = loadingProgress + math.random(1, 3)
        elseif loadingProgress < 50 then
            loadingProgress = loadingProgress + math.random(1, 2)
        elseif loadingProgress < 80 then
            loadingProgress = loadingProgress + math.random(1, 2)
        else
            loadingProgress = loadingProgress + 1
        end
        
        -- Send progress to NUI
        SendNUIMessage({
            eventName = 'loadProgress',
            loadFraction = loadingProgress / 100
        })
    end
end)

-- Shutdown loading screen when player spawns
AddEventHandler("playerSpawned", function()
    Citizen.Wait(1000) -- Small delay to ensure final progress is shown
    ShutdownLoadingScreen()
    ShutdownLoadingScreenNui()
end)
