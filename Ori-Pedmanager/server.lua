local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('pedmanager:requestPedSpawn', function()
    local src = source
    TriggerClientEvent('pedmanager:spawnPeds', src)
end)
