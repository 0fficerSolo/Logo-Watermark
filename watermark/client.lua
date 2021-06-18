-----------------------------
-- Made By 0fficerSolo#0001--
-----------------------------

local isUiOpen = false

Citizen.CreateThread(function()
    while true do
        Wait(1)
        if not IsPauseMenuActive() then
            if not isUiOpen then
                SendNUIMessage({displayWindow = 'true'})
                isUiOpen = true
            end
        else
            if isUiOpen then
                SendNUIMessage({displayWindow = 'false'})
                isUiOpen = false
            end
        end
    end
    if NetworkIsSessionStarted() then
        TriggerEvent("chat:addSuggestion", "/togglewm", "Toggle the Watermark")
        return
    end
end)