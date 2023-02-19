Citizen.CreateThread(function()
    local blipMarker = Config.BlipsForEveryone.Blip
    local blipCoord = AddBlipForCoord(blipMarker.Pos.x, blipMarker.Pos.y, blipMarker.Pos.z)

    SetBlipSprite(blipCoord, blipMarker.Sprite)
    SetBlipDisplay(blipCoord, blipMarker.Display)
    SetBlipScale(blipCoord, blipMarker.Scale)
    SetBlipColour(blipCoord, blipMarker.Colour)
    SetBlipAsShortRange(blipCoord, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Gym')
    EndTextCommandSetBlipName(blipCoord)
end)