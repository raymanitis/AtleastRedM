local VORPcore = exports.vorp_core:GetCore()
local VORPInv = exports.vorp_inventory:vorp_inventoryApi()

VORPInv.RegisterUsableItem(Config.itemsfurnace, function(data)
    local _source = data.source
    VORPInv.CloseInv(_source)
    TriggerClientEvent('hawk_goldsmelt:placefurnace', _source) 
end)

VORPcore.Callback.Register("hawk_goldsmelt:checkitems", function(source, cb, count)
    local _source = source
    local itemcount = VORPInv.getItemCount(_source, Config.itemsgoldnuget)
    if itemcount >= count then
        VORPInv.subItem(_source, Config.itemsgoldnuget, count)
        cb(true) 
    else
        cb(false) 
    end
end)

VORPcore.Callback.Register("hawk_goldsmelt:CheckJob", function(source, cb, job)
    local _source = source
    local Character = VORPcore.getUser(_source).getUsedCharacter
    local PlayerJob = Character.job
    local PlayerGrade = Character.jobGrade

    if (PlayerJob == job.name) and (tonumber(PlayerGrade) >= tonumber(job.grade)) then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('hawk_goldsmelt:removeitem_furnace')
AddEventHandler('hawk_goldsmelt:removeitem_furnace', function()
    local _source = source
    VORPInv.subItem(_source, Config.itemsfurnace, 1)
end)

RegisterServerEvent('hawk_goldsmelt:additem_furnace')
AddEventHandler('hawk_goldsmelt:additem_furnace', function()
    local _source = source
    VORPInv.addItem(_source, Config.itemsfurnace, 1)
end)

RegisterServerEvent('hawk_goldsmelt:returnitems')
AddEventHandler('hawk_goldsmelt:returnitems', function()
    local _source = source
    VORPInv.addItem(_source, Config.itemsgoldnuget, Config.itemsgoldamount)
end)

RegisterServerEvent('hawk_goldsmelt:additems')
AddEventHandler('hawk_goldsmelt:additems', function()
    local _source = source
    local Itemname = Config.reciveitem
    local ItemCount = Config.reciveitemamount
    local canCarryItem = VORPInv.canCarryItem(_source, Itemname, ItemCount)
    local canCarryInv = VORPInv.canCarryItems(_source, ItemCount)

    if not canCarryInv then
        ------------------------ notify ------------------------
        TriggerClientEvent ("hawk_sp_noti",_source, "inventory full", "error" )   
        --------------------------------------------------------   
        return 
    end

    if not canCarryItem then
        ------------------------ notify ------------------------
        TriggerClientEvent ("hawk_sp_noti",_source, "item full", "error" )  
        --------------------------------------------------------
        return     
    end

    VORPInv.addItem(_source, Itemname, ItemCount)
        ------------------------ notify ------------------------
        TriggerClientEvent('hawk_sp_noti', _source, "Recive : "..Itemname.. "x " ..ItemCount,"success") 
        --------------------------------------------------------

end)