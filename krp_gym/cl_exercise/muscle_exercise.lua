
exports.qtarget:AddCircleZone("muscleweight", vec3(-1203.0780, -1564.9979, 4.6117), 0.95, {
    useZ = true,
    name = "muscleweight",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                local playerPed = GetPlayerPed(-1)
                local animDict = "amb@world_human_muscle_free_weights@male@barbell@base"
                local animName = "base"
             
                while not HasAnimDictLoaded(animDict) do
                    RequestAnimDict(animDict)
                    Wait(100)
                end
             
                local blendInSpeed = 8.0
                local blendOutSpeed = 8.0
                local duration = -1
                local flag = 49
                local playbackRate = 0.0
                local lockX = false
                local lockY = false
                local lockZ = false
                local ped = PlayerPedId()
             
                local hash = GetHashKey("prop_curl_bar_01")
RequestModel(hash)
while not HasModelLoaded(hash) do
    Citizen.Wait(100)
    RequestModel(hash)
end
local prop = CreateObject(hash, GetEntityCoords(PlayerPedId()), true, true, true)
AttachEntityToEntity(prop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 18905), 0.1, -0.1, 0.2, 79.0, 90.0, 30.0, true, true, false, false, 1, true)

                TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
                local muscleweight = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if muscleweight then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
    ClearPedTasks(PlayerPedId())
    DeleteEntity(prop)
    Wait(2000)

    if Config.SkillSystem == 'gamz' then
        exports["gamz-skillsystem"]:UpdateSkill("Strength", 0.5)
       elseif Config.SkillSystem == 'b1skillz' then
        exports["B1-skillz"]:UpdateSkill("Strength", 0.5)
       end
else
    lib.notify({
        title = 'Gym',
        description = _U('you_had_bad_exericise'),
        type = 'error'
    })
    DeleteEntity(prop)
    ClearPedTasks(PlayerPedId())
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
            end,
            icon = "fas fa-child-reaching",
            label = _U('free_weight_exercise')
        }
    },
    distance = 1.5
})

-- muscle weitch free 2

exports.qtarget:AddCircleZone("muscleweight", vec3(-1210.5846, -1561.3026, 4.6080), 0.95, {
    useZ = true,
    name = "muscleweight",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                local playerPed = GetPlayerPed(-1)
                local animDict = "amb@world_human_muscle_free_weights@male@barbell@base"
                local animName = "base"
             
                while not HasAnimDictLoaded(animDict) do
                    RequestAnimDict(animDict)
                    Wait(100)
                end
             
                local blendInSpeed = 8.0
                local blendOutSpeed = 8.0
                local duration = -1
                local flag = 49
                local playbackRate = 0.0
                local lockX = false
                local lockY = false
                local lockZ = false
                local ped = PlayerPedId()
             
                local hash = GetHashKey("prop_curl_bar_01")
RequestModel(hash)
while not HasModelLoaded(hash) do
    Citizen.Wait(100)
    RequestModel(hash)
end
local prop = CreateObject(hash, GetEntityCoords(PlayerPedId()), true, true, true)
AttachEntityToEntity(prop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 18905), 0.1, -0.1, 0.2, 79.0, 90.0, 30.0, true, true, false, false, 1, true)

                TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
                local muscleweight = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if muscleweight then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
    ClearPedTasks(PlayerPedId())
    DeleteEntity(prop)
    Wait(2000)

    if Config.SkillSystem == 'gamz' then
        exports["gamz-skillsystem"]:UpdateSkill("Strength", 0.5)
       elseif Config.SkillSystem == 'b1skillz' then
        exports["B1-skillz"]:UpdateSkill("Strength", 0.5)
       end
else
    lib.notify({
        title = 'Gym',
        description = _U('you_had_bad_exericise'),
        type = 'error'
    })
    DeleteEntity(prop)
    ClearPedTasks(PlayerPedId())
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
            end,
            icon = "fas fa-child-reaching",
            label = _U('free_weight_exercise')
        }
    },
    distance = 1.5
})

-- muscle weight free 3

exports.qtarget:AddCircleZone("muscleweight", vec3(-1196.7904, -1573.1229, 4.6128), 0.95, {
    useZ = true,
    name = "muscleweight",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                local playerPed = GetPlayerPed(-1)
                local animDict = "amb@world_human_muscle_free_weights@male@barbell@base"
                local animName = "base"
             
                while not HasAnimDictLoaded(animDict) do
                    RequestAnimDict(animDict)
                    Wait(100)
                end
             
                local blendInSpeed = 8.0
                local blendOutSpeed = 8.0
                local duration = -1
                local flag = 49
                local playbackRate = 0.0
                local lockX = false
                local lockY = false
                local lockZ = false
                local ped = PlayerPedId()
             
                local hash = GetHashKey("prop_curl_bar_01")
RequestModel(hash)
while not HasModelLoaded(hash) do
    Citizen.Wait(100)
    RequestModel(hash)
end
local prop = CreateObject(hash, GetEntityCoords(PlayerPedId()), true, true, true)
AttachEntityToEntity(prop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 18905), 0.1, -0.1, 0.2, 79.0, 90.0, 30.0, true, true, false, false, 1, true)

                TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
                local muscleweight = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if muscleweight then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
    ClearPedTasks(PlayerPedId())
    DeleteEntity(prop)
    Wait(2000)

    if Config.SkillSystem == 'gamz' then
        exports["gamz-skillsystem"]:UpdateSkill("Strength", 0.5)
       elseif Config.SkillSystem == 'b1skillz' then
        exports["B1-skillz"]:UpdateSkill("Strength", 0.5)
       end
else
    lib.notify({
        title = 'Gym',
        description = _U('you_had_bad_exericise'),
        type = 'error'
    })
    DeleteEntity(prop)
    ClearPedTasks(PlayerPedId())
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
            end,
            icon = "fas fa-child-reaching",
            label = _U('free_weight_exercise')
        }
    },
    distance = 1.5
})

-- muscle free weight 4
exports.qtarget:AddCircleZone("muscleweight", vec3(-1198.9729, -1574.6727, 4.6097), 0.95, {
    useZ = true,
    name = "muscleweight",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                local playerPed = GetPlayerPed(-1)
                local animDict = "amb@world_human_muscle_free_weights@male@barbell@base"
                local animName = "base"
             
                while not HasAnimDictLoaded(animDict) do
                    RequestAnimDict(animDict)
                    Wait(100)
                end
             
                local blendInSpeed = 8.0
                local blendOutSpeed = 8.0
                local duration = -1
                local flag = 49
                local playbackRate = 0.0
                local lockX = false
                local lockY = false
                local lockZ = false
                local ped = PlayerPedId()
             
                local hash = GetHashKey("prop_curl_bar_01")
RequestModel(hash)
while not HasModelLoaded(hash) do
    Citizen.Wait(100)
    RequestModel(hash)
end
local prop = CreateObject(hash, GetEntityCoords(PlayerPedId()), true, true, true)
AttachEntityToEntity(prop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 18905), 0.1, -0.1, 0.2, 79.0, 90.0, 30.0, true, true, false, false, 1, true)

                TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
                local muscleweight = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if muscleweight then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
    ClearPedTasks(PlayerPedId())
    DeleteEntity(prop)
    Wait(2000)

    if Config.SkillSystem == 'gamz' then
        exports["gamz-skillsystem"]:UpdateSkill("Strength", 0.5)
       elseif Config.SkillSystem == 'b1skillz' then
        exports["B1-skillz"]:UpdateSkill("Strength", 0.5)
       end
else
    lib.notify({
        title = 'Gym',
        description = _U('you_had_bad_exericise'),
        type = 'error'
    })
    DeleteEntity(prop)
    ClearPedTasks(PlayerPedId())
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
            end,
            icon = "fas fa-child-reaching",
            label = _U('free_weight_exercise')
        }
    },
    distance = 1.5
})

