                
                function showBusySpinner(message)
                    BeginTextCommandBusyspinnerOn('STRING')
                    AddTextComponentSubstringPlayerName(message)
                    EndTextCommandBusyspinnerOn(2)
                    end
    
                    function hideBusySpinner()
                        BusyspinnerOff()
                    end


exports.qtarget:AddCircleZone("flex", vec3(-1212.6918, -1573.1927, 3.6074), 0.95, {
    useZ = true,
    name = "flex",
    debugPoly = false
}, {
    options = {
        {
            action = function()

                local animDict = "amb@world_human_muscle_flex@arms_at_side@base"
                local animName = "base"
             
                while not HasAnimDictLoaded(animDict) do
                    RequestAnimDict(animDict)
                    Wait(100)
                end
             
                local blendInSpeed = 8.0
                local blendOutSpeed = 8.0
                local flag = 49
                local playbackRate = 0.0
                local lockX = false
                local lockY = false
                local lockZ = false
                local ped = PlayerPedId()
             
                local input = lib.inputDialog(Lang:t('input.how_long_to_flex'), {Lang:t('input.description')})

                if not input then return end
                local lockerNumber = tonumber(input[1])

                local duration = lockerNumber
                TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
                SetEntityHeading(ped, 116.3601)
                
                showBusySpinner(Lang:t('flexing_muscle'))
                Wait(lockerNumber)
                hideBusySpinner()
               ClearPedTasks(PlayerPedId())
                
            end,
            icon = "fas fa-medal",
            label = Lang:t('eye.flex')
        }
    },
    distance = 2.5
})  


exports.qtarget:AddCircleZone("flex", vec3(-1209.0870, -1578.3057, 3.6080), 0.95, {
    useZ = true,
    name = "flex",
    debugPoly = false
}, {
    options = {
        {
            action = function()

                local animDict = "amb@world_human_muscle_flex@arms_at_side@base"
                local animName = "base"
             
                while not HasAnimDictLoaded(animDict) do
                    RequestAnimDict(animDict)
                    Wait(100)
                end
             
                local blendInSpeed = 8.0
                local blendOutSpeed = 8.0
                local flag = 49
                local playbackRate = 0.0
                local lockX = false
                local lockY = false
                local lockZ = false
                local ped = PlayerPedId()
             
                local input = lib.inputDialog(Lang:t('input.how_long_to_flex'), {Lang:t('input.description')})

                if not input then return end
                local lockerNumber = tonumber(input[1])

                local duration = lockerNumber
                TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
                SetEntityHeading(ped, 116.3601)
                
                showBusySpinner(Lang:t('flexing_muscle'))
                Wait(lockerNumber)
                hideBusySpinner()
               ClearPedTasks(PlayerPedId())
                
            end,
            icon = "fas fa-medal",
            label = Lang:t('eye.flex')
        }
    },
    distance = 2.5
})
