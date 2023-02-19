exports.qtarget:AddCircleZone("bench", vec3(-1201.1838, -1574.7274, 4.7649), 0.95, {
    useZ = true,
    name = "bench",
    debugPoly = false
}, {
    options = {
        {
            action = function()
   local animDict = "amb@prop_human_seat_muscle_bench_press@idle_a"
   local animName = "idle_a"

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

   SetEntityHeading(PlayerPedId(), 218.0)
   SetEntityCoords(ped, -1201.2109, -1575.0310, 3.1063, 0, 0, 0, true)
   FreezeEntityPosition(ped, true)
   local hash = GetHashKey("prop_barbell_100kg")
RequestModel(hash)
while not HasModelLoaded(hash) do
    Citizen.Wait(100)
    RequestModel(hash)
end
local propbench = CreateObject(hash, GetEntityCoords(PlayerPedId()), true, true, true)
AttachEntityToEntity(propbench, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.17, 0.33, 0.0, -43.0, -43.0, -103.0, true, true, false, false, 1, true)
TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, 50000, 0, playbackRate, lockX, lockY, lockZ)
    
local muscleweight = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if muscleweight then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
       ClearPedTasks(PlayerPedId())
       DeleteObject(propbench)
       FreezeEntityPosition(ped, false)
       Wait(2000)
       if Config.SkillSystem == 'gamz' then
        exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.5)
       elseif Config.SkillSystem == 'b1skillz' then
        exports["B1-skillz"]:UpdateSkill("Stamina", 0.5)
       end
   else
    ClearPedTasks(PlayerPedId())
    DeleteObject(propbench)
    FreezeEntityPosition(ped, false)
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

end,
icon = "fas fa-scale-balanced",
label = _U('bench_exercise')
        }
    },
    distance = 1.5
})  


exports.qtarget:AddCircleZone("bench2", vec3(-1200.5911, -1562.0846, 4.0097), 0.95, {
    useZ = true,
    name = "bench2",
    debugPoly = false
}, {
    options = {
        {
            action = function()
   local animDict = "amb@prop_human_seat_muscle_bench_press@idle_a"
   local animName = "idle_a"

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

   SetEntityHeading(PlayerPedId(), 126.4908)
   SetEntityCoords(ped, -1200.5911, -1562.0846, 3.1063, 0, 0, 0, true)
   FreezeEntityPosition(ped, true)
   local hash = GetHashKey("prop_barbell_100kg")
RequestModel(hash)
while not HasModelLoaded(hash) do
    Citizen.Wait(100)
    RequestModel(hash)
end
local propbench = CreateObject(hash, GetEntityCoords(PlayerPedId()), true, true, true)
AttachEntityToEntity(propbench, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.17, 0.33, 0.0, -43.0, -43.0, -103.0, true, true, false, false, 1, true)
TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, 50000, 0, playbackRate, lockX, lockY, lockZ)
    
local muscleweight = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if muscleweight then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
       ClearPedTasks(PlayerPedId())
       DeleteObject(propbench)
       FreezeEntityPosition(ped, false)
       Wait(2000)
       if Config.SkillSystem == 'gamz' then
        exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.5)
       elseif Config.SkillSystem == 'b1skillz' then
        exports["B1-skillz"]:UpdateSkill("Stamina", 0.5)
       end
   else
    ClearPedTasks(PlayerPedId())
    DeleteObject(propbench)
    FreezeEntityPosition(ped, false)
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

end,
            icon = "fas fa-scale-balanced",
            label = _U('bench_exercise')
        }
    },
    distance = 1.5
})  


exports.qtarget:AddCircleZone("bench3", vec3(-1207.2539, -1560.6705, 4.0178), 0.95, {
    useZ = true,
    name = "bench3",
    debugPoly = false
}, {
    options = {
        {
            action = function()
   local animDict = "amb@prop_human_seat_muscle_bench_press@idle_a"
   local animName = "idle_a"

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

   SetEntityHeading(PlayerPedId(), 217.0823)
   SetEntityCoords(ped, -1206.9447, -1561.1111, 3.1063, 0, 0, 0, true)
   FreezeEntityPosition(ped, true)
   local hash = GetHashKey("prop_barbell_100kg")
RequestModel(hash)
while not HasModelLoaded(hash) do
    Citizen.Wait(100)
    RequestModel(hash)
end
local propbench = CreateObject(hash, GetEntityCoords(PlayerPedId()), true, true, true)
AttachEntityToEntity(propbench, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.17, 0.33, 0.0, -43.0, -43.0, -103.0, true, true, false, false, 1, true)
TaskPlayAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, 50000, 0, playbackRate, lockX, lockY, lockZ)
    
local muscleweight = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', {areaSize = 60, speedMultiplier = 1}, 'medium'})
if muscleweight then
    lib.notify({
        title = 'Gym',
        description = _U('you_had_good_exericise'),
        type = 'success'
    })
       ClearPedTasks(PlayerPedId())
       DeleteObject(propbench)
       FreezeEntityPosition(ped, false)
       Wait(2000)
       if Config.SkillSystem == 'gamz' then
        exports["gamz-skillsystem"]:UpdateSkill("Stamina", 0.5)
       elseif Config.SkillSystem == 'b1skillz' then
        exports["B1-skillz"]:UpdateSkill("Stamina", 0.5)
       end
   else
    ClearPedTasks(PlayerPedId())
    DeleteObject(propbench)
    FreezeEntityPosition(ped, false)
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

end,
            icon = "fas fa-scale-balanced",
            label = _U('bench_exercise')
        }
    },
    distance = 1.5
})  