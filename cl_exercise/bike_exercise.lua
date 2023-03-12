exports.qtarget:AddCircleZone("bike", vec3(-1209.3685, -1562.9207, 4.0536), 0.95, {
    useZ = true,
    name = "bike",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                ESX.TriggerServerCallback('krp_gym:checkitem', function(ano)
                    if ano >= 1 then
                        TaskStartScenarioAtPosition(PlayerPedId(), 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER', -1209.3424,
                        -1562.9297, 4.1328, 124.9282, 100000, 0, true, true)

                        local animDict = "amb@world_human_jog_standing@male@idle_a"
                        local animName = "idle_a"

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

                        TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate,
                        lockX, lockY, lockZ)

                        SetPedKeepTask(ped, true)

                        local muscleweight = lib.skillCheck({ 'easy', 'easy', 'easy', 'easy', 'easy',
                            { areaSize = 60, speedMultiplier = 1 }, 'medium' })
                        if muscleweight then
                            lib.notify({
                                title = 'Gym',
                                description = _U('you_had_good_exericise'),
                                type = 'success'
                            })
                            ClearPedTasks(PlayerPedId())
                            Wait(2000)
                            ClearArea(-1203.1309, -1565.3317, 4.6112, 25, true, true, false, false)
                            if Config.SkillSystem == 'gamz' then
                                exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.5)
                            elseif Config.SkillSystem == 'b1skillz' then
                                exports["B1-skillz"]:UpdateSkill("Stamina", 0.5)
                            end
                        else
                            ClearPedTasks(PlayerPedId())
                            lib.notify({
                                title = 'Gym',
                                description = _U('you_had_bad_exericise'),
                                type = 'error'
                            })
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
                            Wait(2000)
                            ClearArea(-1203.1309, -1565.3317, 4.6112, 25, true, true, false, false)
                            Wait(2000)
                            ClearArea(-1203.1309, -1565.3317, 4.6112, 25, true, true, false, false)
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
            icon = "fas fa-bicycle",
            label = _U('bike_exercise')
        }
    },
    distance = 1.5
})


exports.qtarget:AddCircleZone("bike2", vec3(-1208.1075, -1564.7186, 4.5407), 0.95, {
    useZ = true,
    name = "bike2",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                ESX.TriggerServerCallback('krp_gym:checkitem', function(ano)
                    if ano >= 1 then
   TaskStartScenarioAtPosition(PlayerPedId(), 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER', -1208.1075, -1564.7186, 4.1328, 123.3604, 100000, 0, true, true)

   local animDict = "amb@world_human_jog_standing@male@idle_a"
   local animName = "idle_a"

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

   TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
    
   SetPedKeepTask(ped, true)
          
   local muscleweight = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
   if muscleweight then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
       ClearPedTasks(PlayerPedId())
       Wait(2000)
       ClearArea(-1203.1309, -1565.3317, 4.6112, 25, true, true, false, false)
       if Config.SkillSystem == 'gamz' then
        exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.5)
       elseif Config.SkillSystem == 'b1skillz' then
        exports["B1-skillz"]:UpdateSkill("Stamina", 0.5)
       end
   else
    ClearPedTasks(PlayerPedId())
    lib.notify({
        title = 'Gym',
        description = _U('you_had_bad_exericise'),
        type = 'error'
    })
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
            icon = "fas fa-bicycle",
            label = _U('bike_exercise')
        }
    },
    distance = 1.5
})


exports.qtarget:AddCircleZone("bike3", vec3(-1196.1495, -1570.3285, 4.1041), 0.95, {
    useZ = true,
    name = "bike3",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                ESX.TriggerServerCallback('krp_gym:checkitem', function(ano)
                    if ano >= 1 then
   TaskStartScenarioAtPosition(PlayerPedId(), 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER', -1196.1278, -1570.3947, 4.1328, 304.7292, 100000, 0, true, true)

   local animDict = "amb@world_human_jog_standing@male@idle_a"
   local animName = "idle_a"

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

   TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
    
   SetPedKeepTask(ped, true)
          
   local muscleweight = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
   if muscleweight then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
       ClearPedTasks(PlayerPedId())
       Wait(2000)
       ClearArea(-1203.1309, -1565.3317, 4.6112, 25, true, true, false, false)
       if Config.SkillSystem == 'gamz' then
        exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.5)
       elseif Config.SkillSystem == 'b1skillz' then
        exports["B1-skillz"]:UpdateSkill("Stamina", 0.5)
       end
   else
    ClearPedTasks(PlayerPedId())
    lib.notify({
        title = 'Gym',
        description = _U('you_had_bad_exericise'),
        type = 'error'
    })
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
            icon = "fas fa-bicycle",
            label = _U('bike_exercise')
        }
    },
    distance = 1.5
})

exports.qtarget:AddCircleZone("bike4", vec3(-1194.8844, -1572.1680, 4.1050), 0.95, {
    useZ = true,
    name = "bike2",
    debugPoly = false
}, {
    options = {
        {
            action = function()
                ESX.TriggerServerCallback('krp_gym:checkitem', function(ano)
                    if ano >= 1 then
   TaskStartScenarioAtPosition(PlayerPedId(), 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER', -1194.8844, -1572.1680, 4.1328, 308.8647, 100000, 0, true, true)

   local animDict = "amb@world_human_jog_standing@male@idle_a"
   local animName = "idle_a"

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

   TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
    
   SetPedKeepTask(ped, true)
          
   local muscleweight = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
   if muscleweight then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
       ClearPedTasks(PlayerPedId())
       Wait(2000)
       ClearArea(-1203.1309, -1565.3317, 4.6112, 25, true, true, false, false)
       if Config.SkillSystem == 'gamz' then
        exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.5)
       elseif Config.SkillSystem == 'b1skillz' then
        exports["B1-skillz"]:UpdateSkill("Stamina", 0.5)
       end
   else
    ClearPedTasks(PlayerPedId())
    lib.notify({
        title = 'Gym',
        description = _U('you_had_bad_exericise'),
        type = 'error'
    })
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
            icon = "fas fa-bicycle",
            label = _U('bike_exercise')
        }
    },
    distance = 1.5
})
