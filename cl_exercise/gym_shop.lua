local coordonate = {
    { -1195.0779, -1577.4967, 3.6035, "", 129.1471, 0x07DD91AC, "a_m_m_eastsa_02" }
}
Citizen.CreateThread(function()

    for _, v in pairs(coordonate) do
        RequestModel(GetHashKey(v[7]))
        while not HasModelLoaded(GetHashKey(v[7])) do
            Wait(1)
        end

        RequestAnimDict("amb@world_human_leaning@male@wall@back@smoking@base")
        while not HasAnimDictLoaded("amb@world_human_leaning@male@wall@back@smoking@base") do
            Wait(1)
        end
        ped = CreatePed(4, v[6], v[1], v[2], v[3], 3374176, false, true)
        SetEntityHeading(ped, v[5])
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        TaskPlayAnim(ped, "amb@world_human_leaning@male@wall@back@smoking@base", "base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)


RegisterNetEvent('krp_shop:buyitems', function()

    lib.registerContext({
        id = 'gymshop',
        title = _U('gym_shop'),
        options = {
            {
                title = _U('membership'),
                icon = 'id-card',
                arrow = true,
                event = 'krp_shop:buying',
                args = {value1 = 300, value2 = 'Other value'}
            }
        }
    })
    lib.showContext('gymshop')
end)

RegisterNetEvent('krp_shop:buying')
AddEventHandler('krp_shop:buying', function()
    local price = Config.MembershipPrice
    ESX.TriggerServerCallback("krp_shop:buy", function(mangizi)
        if mangizi then
            local success = lib.progressCircle({
                duration = 5300,
                position = 'bottom',    
                useWhileDead = false,
                canCancel = false,
                disable = {
                    car = true,
                },
                anim = {
                    dict = 'misscarsteal4@actor',
                    clip = 'actor_berating_loop'
                },
            })

            Wait(50)
            FreezeEntityPosition(PlayerPedId(), false)
            ClearPedTasks(PlayerPedId())
        else
            lib.notify({
                title = 'Gym',
                description = _U('not_enough_money'),
                type = 'error'
            })
        end
    end, price, 'membership')
end)

exports.qtarget:AddBoxZone("SHOP", vector3(-1195.0779, -1577.4967, 4.6035), 1, 1, {
    name = "SHOP",
    heading = 340,
    debugPoly = false,
    minZ = 99.81,
    maxZ = 103.81


}, {
    options = {
        {
            event = "krp_shop:buyitems",
            icon = "fas fa-cart-shopping",
            label = _U('gym_shop'),
        },
    },
    distance = 3.5
})