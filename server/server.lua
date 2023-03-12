
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


  
  ESX.RegisterServerCallback('krp_gym:checkitem', function(source, cb, item)
      local _source = source
      local xPlayer = ESX.GetPlayerFromId(_source)
      local items = xPlayer.inventory
  
      cb(exports.ox_inventory:Search(source, 'count', item))
    end)

    ESX.RegisterServerCallback('krp_shop:buy', function(source, cb, price, item, pocet)
      local xPlayer = ESX.GetPlayerFromId(source)
      if xPlayer.getMoney() >= price then
          xPlayer.removeMoney(price)
          xPlayer.addInventoryItem(item, pocet)
          cb(true)
      else
          cb(false)    
      end
  end)

  -------------- qb

  QBCore.Functions.CreateCallback('krp_gym:checkitem', function(source, cb, item)
    local _source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local items = Player.inventory

    cb(exports.ox_inventory:Search(source, 'count', item))
  end)

  QBCore.Functions.CreateCallback('krp_shop:buy', function(source, cb, price, item, pocet)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.getMoney() >= price then
      Player.removeMoney(price)
      Player.addInventoryItem(item, pocet)
        cb(true)
    else
        cb(false)    
    end
end)