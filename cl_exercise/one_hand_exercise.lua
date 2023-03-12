exports.qtarget:AddCircleZone("onehands", vec3(-1197.2910, -1564.8212, 3.9538), 0.95, {
    useZ = true,
    name = "onehands",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                ESX.TriggerServerCallback('krp_gym:checkitem', function(ano)
                    if ano >= 1 then
                local animDict = "amb@world_human_muscle_free_weights@male@barbell@base"
                local animName = "base"
            
                while not HasAnimDictLoaded(animDict) do
                    RequestAnimDict(animDict)
                    Wait(100)
                end
            
                local blendInSpeed = 8.0
                local blendOutSpeed = 8.0
                local duration = 25000
                local flag = 0
                local playbackRate = 0.0
                local lockX = false
                local lockY = false
                local lockZ = false
                local ped = PlayerPedId()
            
            
                SetPedKeepTask(ped, true)


                local hash = GetHashKey("prop_barbell_01")
                RequestModel(hash)
                while not HasModelLoaded(hash) do
                    Citizen.Wait(100)
                    RequestModel(hash)
                end
                local prop = CreateObject(hash, GetEntityCoords(PlayerPedId()), true, true, true)
                AttachEntityToEntity(prop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.1, 0.0, 0.0, 288.0,
                    70.0, -36.0, true, true, false, false, 1, true)

RequestModel(hash)
while not HasModelLoaded(hash) do
    Citizen.Wait(100)
    RequestModel(hash)
end
local prop2 = CreateObject(hash, GetEntityCoords(PlayerPedId()), true, true, true)
AttachEntityToEntity(prop2, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 18905), 0.1, 0.0, 0.0, 267.0, 91.0, -134.0, true, true, false, false, 1, true)

TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
local onehandy = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if onehandy then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
    ClearPedTasks(PlayerPedId())
    DeleteObject(prop2)
    DeleteObject(prop)
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
    DeleteObject(prop)
    DeleteObject(prop2)
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
            icon = "fas fa-dumbbell",
            label = _U('one_hand_exercise')
        }
    },
    distance = 1.5
})

-- onehand 2 
exports.qtarget:AddCircleZone("onehands", vec3(-1203.2957, -1573.5851, 4.9189), 0.95, {
    useZ = true,
    name = "onehands",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                ESX.TriggerServerCallback('krp_gym:checkitem', function(ano)
                    if ano >= 1 then
                local animDict = "amb@world_human_muscle_free_weights@male@barbell@base"
                local animName = "base"
            
                while not HasAnimDictLoaded(animDict) do
                    RequestAnimDict(animDict)
                    Wait(100)
                end
            
                local blendInSpeed = 8.0
                local blendOutSpeed = 8.0
                local duration = 25000
                local flag = 0
                local playbackRate = 0.0
                local lockX = false
                local lockY = false
                local lockZ = false
                local ped = PlayerPedId()
            
            
                SetPedKeepTask(ped, true)


                local hash = GetHashKey("prop_barbell_01")
                RequestModel(hash)
                while not HasModelLoaded(hash) do
                    Citizen.Wait(100)
                    RequestModel(hash)
                end
                local prop = CreateObject(hash, GetEntityCoords(PlayerPedId()), true, true, true)
                AttachEntityToEntity(prop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.1, 0.0, 0.0, 288.0,
                    70.0, -36.0, true, true, false, false, 1, true)

RequestModel(hash)
while not HasModelLoaded(hash) do
    Citizen.Wait(100)
    RequestModel(hash)
end
local prop2 = CreateObject(hash, GetEntityCoords(PlayerPedId()), true, true, true)
AttachEntityToEntity(prop2, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 18905), 0.1, 0.0, 0.0, 267.0, 91.0, -134.0, true, true, false, false, 1, true)

TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
local onehandy = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if onehandy then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
    ClearPedTasks(PlayerPedId())
    DeleteObject(prop2)
    DeleteObject(prop)
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
    DeleteObject(prop)
    DeleteObject(prop2)
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
            icon = "fas fa-dumbbell",
            label = _U('one_hand_exercise')
        }
    },
    distance = 1.5
})

exports.qtarget:AddCircleZone("onehands3", vec3(-1209.9762, -1558.4160, 4.8379), 0.95, {
    useZ = true,
    name = "onehands3",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                ESX.TriggerServerCallback('krp_gym:checkitem', function(ano)
                    if ano >= 1 then
                local animDict = "amb@world_human_muscle_free_weights@male@barbell@base"
                local animName = "base"
            
                while not HasAnimDictLoaded(animDict) do
                    RequestAnimDict(animDict)
                    Wait(100)
                end
            
                local blendInSpeed = 8.0
                local blendOutSpeed = 8.0
                local duration = 25000
                local flag = 0
                local playbackRate = 0.0
                local lockX = false
                local lockY = false
                local lockZ = false
                local ped = PlayerPedId()
            
            
                SetPedKeepTask(ped, true)


                local hash = GetHashKey("prop_barbell_01")
                RequestModel(hash)
                while not HasModelLoaded(hash) do
                    Citizen.Wait(100)
                    RequestModel(hash)
                end
                local prop = CreateObject(hash, GetEntityCoords(PlayerPedId()), true, true, true)
                AttachEntityToEntity(prop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.1, 0.0, 0.0, 288.0,
                    70.0, -36.0, true, true, false, false, 1, true)

RequestModel(hash)
while not HasModelLoaded(hash) do
    Citizen.Wait(100)
    RequestModel(hash)
end
local prop2 = CreateObject(hash, GetEntityCoords(PlayerPedId()), true, true, true)
AttachEntityToEntity(prop2, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 18905), 0.1, 0.0, 0.0, 267.0, 91.0, -134.0, true, true, false, false, 1, true)

TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
local onehandy = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if onehandy then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
    ClearPedTasks(PlayerPedId())
    DeleteObject(prop2)
    DeleteObject(prop)
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
    DeleteObject(prop)
    DeleteObject(prop2)
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
            icon = "fas fa-dumbbell",
            label = _U('one_hand_exercise')
        }
    },
    distance = 1.5
})