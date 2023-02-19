exports.qtarget:AddCircleZone("situps", vec3(-1201.2391, -1566.6486, 4.0158), 0.75, {
    useZ = true,
    name = "situps",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                local playerPed = GetPlayerPed(-1)
                FreezeEntityPosition(playerPed, true)
                SetEntityCoords(playerPed, -1201.2391, -1566.6486, 4.0158, 0, 0, 0, true)
                SetEntityHeading(playerPed, 218.7526)
                TaskStartScenarioInPlace(playerPed, "world_human_sit_ups", 0, true)
Wait(5000)
local situps = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if situps then
    print('yougood')
    ClearPedTasks(PlayerPedId())
    Wait(2000)
    ClearArea(-1203.1309, -1565.3317, 4.6112, 25, true, true, false, false)
    FreezeEntityPosition(playerPed, false)
else
    FreezeEntityPosition(playerPed, false)
    ClearPedTasks(PlayerPedId())
    ClearArea(-1202.8291, -1565.1143, 4.6152, 1.0, true, true, false, false )
    Wait(4500)
    lib.progressBar({
        duration = 4000,
        label = Lang:t('error.catching_breath'),
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
        anim = {
            dict = 're@construction',
            clip = 'out_of_breath' 
        },
    })
    Wait(2000)
    ClearArea(-1203.1309, -1565.3317, 4.6112, 25, true, true, false, false)
    Wait(2000)
    ClearArea(-1203.1309, -1565.3317, 4.6112, 25, true, true, false, false)
end
            end,
            icon = "fas fa-person",
            label = Lang:t('eye.situps_exercise')
        }
    },
    distance = 1.5
})

exports.qtarget:AddCircleZone("situps2", vec3(-1203.4559, -1567.7660, 4.0093), 0.75, {
    useZ = true,
    name = "situps2",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                local playerPed = GetPlayerPed(-1)
                FreezeEntityPosition(playerPed, true)
                SetEntityCoords(playerPed, -1203.4559, -1567.7660, 4.0093, 0, 0, 0, true)
                SetEntityHeading(playerPed, 218.7526)
                TaskStartScenarioInPlace(playerPed, "world_human_sit_ups", 0, true)
Wait(5000)
local situps = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if situps then
    lib.notify({
        title = 'Gym',
        description = Lang:t('success.you_had_good_exericise'),
        type = 'success'
    })
    ClearPedTasks(PlayerPedId())
    Wait(2000)
    FreezeEntityPosition(playerPed, false)
    if Config.SkillSystem == 'gamz' then
        exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.5)
       elseif Config.SkillSystem == 'b1skillz' then
        exports["B1-skillz"]:UpdateSkill("Stamina", 0.5)
       end
else
    lib.notify({
        title = 'Gym',
        description = Lang:t('error.you_had_bad_exericise'),
        type = 'error'
    })
    FreezeEntityPosition(playerPed, false)
    ClearPedTasks(PlayerPedId())
    Wait(4500)
    lib.progressBar({
        duration = 4000,
        label = Lang:t('error.catching_breath'),
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
        anim = {
            dict = 're@construction',
            clip = 'out_of_breath' 
        },
    })
end
            end,
            icon = "fas fa-person",
            label = Lang:t('eye.situps_exercise')
        }
    },
    distance = 1.5
})