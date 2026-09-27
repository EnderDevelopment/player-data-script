local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('fivemscript:getData', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        MySQL.Async.fetchScalar('SELECT value FROM ' .. Config.Database.TableName .. ' WHERE player_id = @player_id', {
            ['@player_id'] = xPlayer.identifier
        }, function(result)
            if result then
                cb({value = result})
            else
                MySQL.Async.execute('INSERT INTO ' .. Config.Database.TableName .. ' (player_id, value) VALUES (@player_id, @value)', {
                    ['@player_id'] = xPlayer.identifier,
                    ['@value'] = Config.ScriptSettings.DefaultValue
                }, function(rowsChanged)
                    cb({value = Config.ScriptSettings.DefaultValue})
                end)
            end
        end)
    else
        cb(nil)
    end
end)