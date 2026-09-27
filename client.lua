local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    RegisterCommand('fivemscript', function(source, args, rawCommand)
        ESX.TriggerServerCallback('fivemscript:getData', function(data)
            if data then
                ESX.ShowNotification('Your value: ' .. data.value)
            else
                ESX.ShowNotification('No data found.')
            end
        end)
    end, false)
end)