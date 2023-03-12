exports.qtarget:AddCircleZone("chins", vec3(-1204.9618, -1563.9692, 4.6085), 0.95, {
    useZ = true,
    name = "chins",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                ESX.TriggerServerCallback('krp_gym:checkitem', function(ano)
                    if ano >= 1 then
                local playerPed = GetPlayerPed(-1)
                FreezeEntityPosition(playerPed, true)
                SetEntityCoords(playerPed, -1204.7554, -1564.3160, 3.6085, 0, 0, 0, true)
                SetEntityHeading(playerPed, 34.3727)
                TaskStartScenarioInPlace(playerPed, "prop_human_muscle_chin_ups", 0, true)
Wait(4300)
local chinups = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if chinups then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
    ClearPedTasks(PlayerPedId())
    Wait(2000)
    FreezeEntityPosition(playerPed, false)
    if Config.SkillSystem == 'gamz' then
        exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.5)
        exports["gamz-skillsystem"]:UpdateSkill("Strength", 0.5)
       elseif Config.SkillSystem == 'b1skillz' then
        exports["B1-skillz"]:UpdateSkill("Stamina", 0.5)
        exports["B1-skillz"]:UpdateSkill("Strength", 0.5)
       end
else
    lib.notify({
        title = 'Gym',
        description = _U('you_had_bad_exericise'),
        type = 'error'
    })
    FreezeEntityPosition(playerPed, false)
    ClearPedTasks(PlayerPedId())
    Wait(1000)
    lib.progressBar({
        duration = 4000,
        label = _U('catching_breath'),
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
else
    lib.notify({
        title = 'Gym',
        description = _U('u_dont_have_membership'),
        type = 'error'
    })
       end
    end, 'membership')
end,
            icon = "fas fa-litecoin-sign",
            label = _U('chins_exercise')
        }
    },
    distance = 1.5
})

exports.qtarget:AddCircleZone("chins2", vec3(-1199.9476, -1571.1968, 4.6096), 0.95, {
    useZ = true,
    name = "chins2",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                ESX.TriggerServerCallback('krp_gym:checkitem', function(ano)
                    if ano >= 1 then
                local playerPed = GetPlayerPed(-1)
                FreezeEntityPosition(playerPed, true)
                SetEntityCoords(playerPed, -1199.8259, -1571.3915, 3.6085, 0, 0, 0, true)
                SetEntityHeading(playerPed, 34.3727)
                TaskStartScenarioInPlace(playerPed, "prop_human_muscle_chin_ups", 0, true)
Wait(4300)
local chinups2 = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if chinups2 then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
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
        description = _U('you_had_bad_exericise'),
        type = 'error'
    })
    FreezeEntityPosition(playerPed, false)
    ClearPedTasks(PlayerPedId())
    Wait(1000)
    lib.progressBar({
        duration = 4000,
        label = _U('catching_breath'),
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
else
    lib.notify({
        title = 'Gym',
        description = _U('u_dont_have_membership'),
        type = 'error'
    })
       end
    end, 'membership')
end,
            icon = "fas fa-litecoin-sign",
            label = _U('chins_exercise')
        }
    },
    distance = 1.5
})