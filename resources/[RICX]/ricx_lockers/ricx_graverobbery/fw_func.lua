data = {}
local VorpCore
local VorpInv
local QBRItems
local QRCore
local qc
local RSGCore

local ConfigS = Config

if not ConfigS.framework then 
    if GetResourceState('redem') == 'started' then
        ConfigS.framework = "redemrp"
    elseif GetResourceState('redem_roleplay') == 'started' and GetResourceState('redem') ~= 'started' and GetResourceState('vorp_core')  ~= 'started' then
        ConfigS.framework = "redemrp-reboot"
    elseif GetResourceState('vorp_core') == 'started' then
        ConfigS.framework = "vorp"
    elseif GetResourceState('qbr-core') == 'started' then
        ConfigS.framework = "qbr"
    elseif GetResourceState('rsg-core') == 'started' then
        ConfigS.framework = "rsg"
    elseif GetResourceState('qr-core') == 'started' then
        ConfigS.framework = "qbr2"
    end
end

if ConfigS.framework == "redemrp" then
    TriggerEvent("redemrp_inventory:getData",function(call)
        data = call
    end)
elseif ConfigS.framework == "redemrp-reboot" then
    TriggerEvent("redemrp_inventory:getData",function(call)
        data = call
    end)
    RedEM = exports["redem_roleplay"]:RedEM()
elseif ConfigS.framework == "vorp" then 
    TriggerEvent("getCore",function(core)
        VorpCore = core
    end)
    
    VorpInv = exports.vorp_inventory:vorp_inventoryApi()
elseif ConfigS.framework == "qbr" then 
    qc = "qbr-core"
    QBRItems = exports[qc]:GetItems()
elseif ConfigS.framework == "qbr2" then 
    qc = "qr-core"
    QRCore = exports[qc]:GetCoreObject()
elseif ConfigS.framework == "rsg" then 
    qc = "rsg-core"
    RSGCore = exports[qc]:GetCoreObject()
end
--------------------------------------------------------------------------------------------------------------------------------------------
function IsAdmin(src)
    local _source = src
    local a = nil
    local identifier = ""
    if ConfigS.framework == "redemrp" then 
        TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
            identifier = tostring(user.getIdentifier())
            if (user.getGroup() == "admin" or user.getGroup() == "superadmin") then	
                a = true
            else
                a = false
            end
        end) 
        Citizen.Wait(200)
    elseif ConfigS.framework == "redemrp-reboot" then 
        local Player = RedEM.GetPlayer(src)
        identifier = Player.identifier
        if (Player.group == "admin" or Player.group == "superadmin") then	
            a = true
        else
            a = false
        end
    elseif ConfigS.framework == "vorp" then 
        local User = VorpCore.getUser(_source)
        local Character = User.getUsedCharacter
        local group = Character.group
        local group2 = User.group
        identifier = Character.identifier
        if (group == "admin" or group == "superadmin") or (group2 == "admin" or group2 == "superadmin") then	
            a = true
        else
            a = false
        end
    elseif ConfigS.framework == "qbr" or ConfigS.framework == "qbr2" or ConfigS.framework == "rsg" then 
        local User 
        if  ConfigS.framework == "qbr" then
            User = exports[qc]:GetPlayer(src)
        elseif ConfigS.framework == "qbr2" then 
            User = QRCore.Functions.GetPlayer(src)
        elseif ConfigS.framework == "rsg" then 
            User = RSGCore.Functions.GetPlayer(src)
        end
        identifier = User.PlayerData.license
        a = false
    end
    if not a then 
        if ConfigS.AdminIdentifiers then 
            if ConfigS.AdminIdentifiers[identifier] then 
                a = true
            end
        end
    end
    return a
end
--------------------------------------------------------------------------------------------------------------------------------------------
function GetRDMPlayer(src)
    local a = nil 
    if ConfigS.framework == "redemrp" then
        TriggerEvent('redemrp:getPlayerFromId', src, function(user)
            if user then 
                local identifier = tostring(user.getIdentifier())
                local charid = tonumber(user.getSessionVar("charid"))
                local pname = user.getName()
                local money = user.getMoney()
                local job = user.getJob()
                local grade = user.getJobgrade()
                a = {identifier = identifier, charid = charid, name = pname, money = money, job = job, grade = grade}
            else
                a = false 
            end
        end)
        Wait(200)
    elseif ConfigS.framework == "redemrp-reboot" then
        local Player = RedEM.GetPlayer(src)
        if Player then 
            local identifier = Player.identifier
            local charid = Player.charid
            local pname = Player.firstname.." "..Player.lastname   
            local money = Player.money
            local job = Player.job   
            local grade = Player.jobgrade
            a = {identifier = identifier, charid = charid, name = pname, money = money, job = job, grade = grade}
        else
            a = false 
        end
    elseif ConfigS.framework == "vorp" then 
        if not VorpCore.getUser(src) then
            a = false
            return a
        end
        local Character = VorpCore.getUser(src).getUsedCharacter
        if not Character.job then 
            a = false
            return a
        end
        local job =  Character.job
        local identifier = Character.identifier
        local charid = Character.charIdentifier
        local fn = Character.firstname
        local ln = Character.lastname
        local name = (fn or Character.charIdentifier).." "..(ln or Character.identifier)
        local pname = name
        local money =  Character.money
        a = {identifier = identifier, charid = charid, name = pname, money = money, job = job, grade = Character.jobGrade}
    elseif ConfigS.framework == "qbr" or ConfigS.framework == "qbr2" or ConfigS.framework == "rsg" then 
        local User 
        if  ConfigS.framework == "qbr" then
            User = exports[qc]:GetPlayer(src)
        elseif ConfigS.framework == "qbr2" then 
            User = QRCore.Functions.GetPlayer(src)
        elseif ConfigS.framework == "rsg" then 
            User = RSGCore.Functions.GetPlayer(src)
        end
        if User?.PlayerData?.job?.name then 
            local job =  User.PlayerData.job.name
            local identifier = User.PlayerData.license
            local charid = User.PlayerData.cid
            local pname = User.PlayerData.charinfo.firstname.." "..User.PlayerData.charinfo.lastname
            local money = User.PlayerData.money.cash
            a = {identifier = identifier, charid = charid, name = pname, money = money, job = job, grade = User.PlayerData.job.grade.level}
        else
            a = false
        end
    end
    return a
end
--------------------------------------------------------------------------------------------------------------------------------------------
function GetRDMItem(src, item)
    local itemD = nil 
    if ConfigS.framework == "redemrp" then
        itemD = data.getItem(src, item)
    elseif ConfigS.framework == "redemrp-reboot" then
        itemD = data.getItem(src, item)
    elseif ConfigS.framework == "vorp" then
        itemD = {src, item}
    elseif ConfigS.framework == "qbr" or ConfigS.framework == "qbr2" or ConfigS.framework == "rsg" then 
        itemD = {src, item}
    end
    return itemD
end
--------------------------------------------------------------------------------------------------------------------------------------------
function GetRDMItemCount(item)
    if ConfigS.framework == "redemrp" then
        return item.ItemAmount
    elseif ConfigS.framework == "redemrp-reboot" then
        return item.ItemAmount
    elseif ConfigS.framework == "vorp" then
        return VorpInv.getItemCount(item[1], item[2])
    elseif ConfigS.framework == "qbr" or ConfigS.framework == "qbr2" or ConfigS.framework == "rsg" then 
        local count
        local User 
        if  ConfigS.framework == "qbr" then
            User = exports[qc]:GetPlayer(item[1])
        elseif ConfigS.framework == "rsg" then 
            User = RSGCore.Functions.GetPlayer(item[1])
        else
            User = QRCore.Functions.GetPlayer(item[1])
        end
        local hasItem = User.Functions.GetItemByName(item[2])
        if hasItem and hasItem.amount > 0 then 
            count = hasItem.amount
        end
        return count
    end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function AddRDMItem(value, itemD)
    local ret = nil
    if ConfigS.framework == "redemrp" then
        if itemD.ItemAmount + value <= itemD.ItemInfo.limit then 
            itemD.AddItem(value)
            ret = true
        else
            ret = false
        end 
    elseif ConfigS.framework == "redemrp-reboot" then
        if itemD.ItemAmount + value <= itemD.ItemInfo.limit then 
            itemD.AddItem(value)
            ret = true
        else
            ret = false
        end 
    elseif ConfigS.framework == "vorp" then
        local canCarry = VorpInv.canCarryItem(itemD[1], itemD[2], value)
        local cancarry2 = VorpInv.canCarryItems(itemD[1], value)
        if canCarry and cancarry2 then
            VorpInv.addItem(itemD[1], itemD[2], value)
            ret = true
        else
            ret = false
        end 
    elseif ConfigS.framework == "qbr" or ConfigS.framework == "qbr2" or ConfigS.framework == "rsg" then 
        local User 
        if  ConfigS.framework == "qbr" then
            User = exports[qc]:GetPlayer(itemD[1])
        elseif ConfigS.framework == "rsg" then 
            User = RSGCore.Functions.GetPlayer(itemD[1])
        else
            User = QRCore.Functions.GetPlayer(itemD[1])
        end
        User.Functions.AddItem(itemD[2], value)
        ret = true
    end
    return ret
end
--------------------------------------------------------------------------------------------------------------------------------------------
function RemoveRDMItem(value, itemD)
    if ConfigS.framework == "redemrp" then
        itemD.RemoveItem(value)
    elseif ConfigS.framework == "redemrp-reboot" then
        itemD.RemoveItem(value)
    elseif ConfigS.framework == "vorp" then
        VorpInv.subItem(itemD[1], itemD[2], value)
    elseif ConfigS.framework == "qbr" or ConfigS.framework == "qbr2" or ConfigS.framework == "rsg" then 
        local User 
        if  ConfigS.framework == "qbr" then
            User = exports[qc]:GetPlayer(itemD[1])
        elseif ConfigS.framework == "rsg" then 
            User = RSGCore.Functions.GetPlayer(itemD[1])
        else
            User = QRCore.Functions.GetPlayer(itemD[1])
        end
        User.Functions.RemoveItem(itemD[2], value)
    end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function RegisterRDMItemUsage(itemname)
    if ConfigS.framework == "redemrp" then 
        RegisterServerEvent("RegisterUsableItem:"..itemname, function(source)
            local _source = source
        end)
    elseif ConfigS.framework == "redemrp-reboot" then
        RegisterServerEvent("RegisterUsableItem:"..itemname, function(source)
            local _source = source
        end)
    elseif ConfigS.framework == "vorp" then 
        CreateThread(function()
            Citizen.Wait(100)
            VorpInv.RegisterUsableItem(itemname, function(data)
                local _source = data.source 
                VorpInv.CloseInv(_source)
            end)
            return
        end)
    elseif ConfigS.framework == "qbr" or ConfigS.framework == "qbr2" or ConfigS.framework == "rsg" then 
        if ConfigS.framework == "qbr" then 
            exports['qbr-core']:CreateUseableItem(itemname, function(source, item)
                local _source = source
            end)
        elseif ConfigS.framework == "rsg" then 
            RSGCore.Functions.CreateUseableItem(itemname, function(source)
                local _source = source
            end)
        else
            QRCore.Functions.CreateUseableItem(itemname, function(source, item)
                local _source = source
            end)
        end
    end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function CreateRedEMRP_LOCKER(id, pos, job)
    if ConfigS.framework == "redemrp" then
        data.createLocker(id, pos.x, pos.y, pos.z, job)
    elseif ConfigS.framework == "redemrp-reboot" then

    elseif ConfigS.framework == "qbr" or ConfigS.framework == "qbr2" or ConfigS.framework == "rsg" then 
        print("qbr")
    else
        print("there is no vorp locker, create one with LUA, HTML, CSS and JS")
        return 
    end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function RemoveRDMMoney(src, value)
    if ConfigS.framework == "redemrp" then 
        TriggerEvent('redemrp:getPlayerFromId', src, function(user)
            user.removeMoney(value)
        end)
    elseif ConfigS.framework == "redemrp-reboot" then
        local Player = RedEM.GetPlayer(src)
        Player.RemoveMoney(value)
    elseif ConfigS.framework == "vorp" then 
        local Character = VorpCore.getUser(src).getUsedCharacter
        Character.removeCurrency(0 , value)
    elseif ConfigS.framework == "qbr" or ConfigS.framework == "qbr2" or ConfigS.framework == "rsg" then 
        local User 
        if  ConfigS.framework == "qbr" then
            User = exports[qc]:GetPlayer(src)
        elseif ConfigS.framework == "rsg" then 
            User = RSGCore.Functions.GetPlayer(src)
        else
            User = QRCore.Functions.GetPlayer(src)
        end
        User.Functions.RemoveMoney("cash", value, "RicX : Remove Money")
    end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function AddRDMMoney(src, value)
    if ConfigS.framework == "redemrp" then 
        TriggerEvent('redemrp:getPlayerFromId', src, function(user)
            user.addMoney(value)
        end)
    elseif ConfigS.framework == "redemrp-reboot" then
        local Player = RedEM.GetPlayer(src)
        Player.AddMoney(value)
    elseif ConfigS.framework == "vorp" then 
        local Character = VorpCore.getUser(src).getUsedCharacter
        Character.addCurrency(0 , value)
    elseif ConfigS.framework == "qbr" or ConfigS.framework == "qbr2" or ConfigS.framework == "rsg" then 
        local User 
        if  ConfigS.framework == "qbr" then
            User = exports[qc]:GetPlayer(src)
        elseif ConfigS.framework == "rsg" then 
            User = RSGCore.Functions.GetPlayer(src)
        else
            User = QRCore.Functions.GetPlayer(src)
        end
        User.Functions.AddMoney("cash", value, "RicX : Add Money")
    end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function RedMSQL(dat)
    local a = nil
    if ConfigS.framework == "redemrp" then 
        MySQL.Async.fetchAll("SELECT * FROM ricx_graverobbery WHERE identifier=@id2 AND charid=@id3", {id2=dat.identifier, id3=dat.charid}, function(result)
            Wait(200)
            if result[1] then
                a = result
            else
                a = false
            end
        end)
    elseif ConfigS.framework == "redemrp-reboot" then
        MySQL.query("SELECT * FROM ricx_graverobbery WHERE identifier=? AND charid=?", {dat.identifier, dat.charid}, function(result)
            Wait(200)
            if result[1] then
                a = result
            else
                a = false
            end
        end)
    elseif ConfigS.framework == "vorp" then 
        exports.ghmattimysql:execute("SELECT * FROM ricx_graverobbery WHERE identifier=@id2 AND charid=@id3", {id2=dat.identifier, id3=dat.charid}, function(result)
            Wait(200)
            if result[1] then
                a = result
            else
                a = false
            end
        end)
    elseif ConfigS.framework == "qbr" or ConfigS.framework == "qbr2" or ConfigS.framework == "rsg" then 
        MySQL.query("SELECT * FROM ricx_graverobbery WHERE identifier=@id2 AND charid=@id3", {id2=dat.identifier, id3=dat.charid}, function(result)
            Wait(200)
            if result[1] then
                a = result
            else
                a = false
            end
        end)
    end
    while a == nil do 
        Wait(100)
    end
    return a
end
--------------------------------------------------------------------------------------------------------------------------------------------
function RedMSQL_Update(dat, save)
    if ConfigS.framework == "redemrp" then 
        MySQL.Async.execute("UPDATE ricx_graverobbery SET data=@data WHERE identifier=@id2 AND charid=@id3", {id2 = dat.identifier, id3 = dat.charid, data = save}, function(done)
        end)
    elseif ConfigS.framework == "redemrp-reboot" then
        MySQL.update("UPDATE ricx_graverobbery SET data=? WHERE identifier=? AND charid=?", {save, dat.identifier, dat.charid}, function(done)
        end)
    elseif ConfigS.framework == "vorp" then 
        exports.ghmattimysql:execute("UPDATE ricx_graverobbery SET data=@data WHERE identifier=@id2 AND charid=@id3", {id2 = dat.identifier, id3 = dat.charid, data = save}, function(done)
        end)
    elseif ConfigS.framework == "qbr" or ConfigS.framework == "qbr2" or ConfigS.framework == "rsg" then 
        MySQL.update("UPDATE ricx_graverobbery SET data=@data WHERE identifier=@id2 AND charid=@id3", {id2 = dat.identifier, id3 = dat.charid, data = save})
    end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function RedMSQL_Insert(dat, save)
    local a = nil 
    if ConfigS.framework == "redemrp" then 
        MySQL.Async.execute("INSERT INTO ricx_graverobbery (identifier, charid, data) VALUES (@identifier, @charid, @data)",  {identifier = dat.identifier, charid = dat.charid, data = save}, function(result)
            Wait(200)
            if result > 0 then 
                a = result
            else
                a = false 
            end
        end)
    elseif ConfigS.framework == "redemrp-reboot" then
        MySQL.insert("INSERT INTO ricx_graverobbery (identifier, charid, data) VALUES (?,?,?)",  {dat.identifier, dat.charid, save}, function(result)
            Wait(200)
            if result > 0 then 
                a = result
            else
                a = false 
            end
        end)
    elseif ConfigS.framework == "vorp" then 
        exports.ghmattimysql:execute("INSERT INTO ricx_graverobbery (identifier, charid, data) VALUES (@identifier, @charid, @data)",  {identifier = dat.identifier, charid = dat.charid, data = save}, function(result)
            Wait(200)
            if result.insertId > 0 then 
                a = result.insertId
            else
                a = false 
            end
        end)
    elseif ConfigS.framework == "qbr" or ConfigS.framework == "qbr2" or ConfigS.framework == "rsg" then 
        MySQL.insert("INSERT INTO ricx_graverobbery (identifier, charid, data) VALUES (@identifier, @charid, @data)",  {identifier = dat.identifier, charid = dat.charid, data = save}, function(result)
            Wait(200)
            if result > 0 then 
                a = result
            else
                a = false 
            end
        end)
    end
    Wait(250)
    while a == nil do 
        print("waiting for id...")
        Wait(200)
    end
    return a
end
--------------------------------------------------------------------------------------------------------------------------------------------
function CustomAlert(alertdata)
    local _source = alertdata.source 
    local coords = alertdata.coords 
    local id = alertdata.id
end 
--------------------------------------------------------------------------------------------------------------------------------------------
function ExtraReward(src, reward_type, reward)
    local _source = src 
    local item = reward.item or false 
    local amount = reward.amount or false 
    local money = reward.money or false 
    if reward_type == "money_reward" then 

    elseif reward_type == "item_reward" then 

    end
end
--------------------------------------------------------------------------------------------------------------------------------------------