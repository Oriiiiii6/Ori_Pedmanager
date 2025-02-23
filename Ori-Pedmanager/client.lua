local spawnedPeds = {}

local function spawnPeds()
    for _, pedData in ipairs(Config.Peds) do
        local model = GetHashKey(pedData.model)
        RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(100)
        end

        local coords = pedData.coords
        local ped = CreatePed(4, model, coords.x, coords.y, coords.z - 1.0, coords.w, false, true)

        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)

        if pedData.scenario then
            TaskStartScenarioInPlace(ped, pedData.scenario, 0, true)
        end

        exports['qb-target']:AddTargetEntity(ped, {
            options = pedData.targetOptions,
            distance = 2.5
        })

        table.insert(spawnedPeds, ped)
    end
end

CreateThread(function()
    Wait(2000)
    spawnPeds()
end)