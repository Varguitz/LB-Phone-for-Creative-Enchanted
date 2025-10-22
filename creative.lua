---By Varguitz for LB-Phone Creative Enchanted
if Config.Framework ~= "vrpex" then
    return
end
------------------------------------------------------------------------------------------------------------------------------------------
--- VRP EXTENSION
------------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
--- PLAYER FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
function IsAdmin(source)
    local source = source
	local Passport = vRP.Passport(source)
    return vRP.HasGroup(Passport,"Admin")
end
function GetIdentifier(source)
    local source = source
	local License = vRP.Identities(source)
    return License
end
function HasItem(source, itemName)
    local source = source
	local Passport = vRP.Passport(source)
	if Passport then
        local Phone = vRP.ConsultItem(Passport,itemName)
        if Phone then
            return true
        end  
    end
    return false
end
function GetCharacterName(source)
    local source = source
	local Passport = vRP.Passport(source)
    local Identity = vRP.FullName(Passport)
    if Identity then
        return Identity
    else
        return GetPlayerName(source), ""
    end
end
----------------------------------------------------------------------------------------------------------------------------------------
--- MONEY FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------    
function GetBalance(source)
    local source = source
	local Passport = vRP.Passport(source)
    if Passport then
        return vRP.Identity(Passport)["Bank"]
    else
        return 0
    end
end
function AddMoney(source, amount)
    local source = source
	local Passport = vRP.Passport(source)
	if Passport and parseInt(amount) > 0 then
        vRP.GiveBank(Passport,amount)
        return true
    end
    return false
    
end
function AddMoneyOffline(identifier, amount)
    if amount <= 0 then
        return false
    end

    return true
end
function RemoveMoney(source, amount)
    local source = source
	local Passport = vRP.Passport(source)
    if Passport and parseInt(amount) > 0 then
        vRP.PaymentBank(Passport,amount,true)
        return true
    end
    return false
end
----------------------------------------------------------------------------------------------------------------------------------------
--- GARAGE FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------
function GetPlayerVehicles(source)
    local source = source
	local Passport = vRP.Passport(source)
	if not Passport then
		return {}
	end

    local vehicles = vRP.Query("vehicles/UserVehicles",{ Passport = Passport })
    local toSend = {}

    for _,v in pairs(vehicles) do
        if VehicleExist(v.Vehicle) and not v.Work then
            toSend[#toSend+1] = {
                plate = v.Plate,
                type = "car",
                model = v.Vehicle,
                location = "Garage "..v["Save"] or "Out",
                statistics = {
                    engine = v.Engine / 10,
                    body = v.Body / 10,
                    fuel = v.Fuel,
                    nitro = v.Nitro or 0
                }
            }
        end
    end
    return toSend
end
function GetVehicle(source, Plate)
    local source = source
	local Passport = vRP.Passport(source)
	if not Passport then
		return 
	end
    local vehicle = vRP.Query("vehicles/plateVehicles",{ Plate = Plate })
 
    local v = nil
    if type(vehicle) == "table" then
        if vehicle[1] then
            v = vehicle[1]
        else
            v = vehicle
        end
    end

    if not v then
        return
    end

    local result = {
        plate = v.Vehicle,
        model = GetHashKey(v.Vehicle),
        location = location,
        type = "car"
    }

    return result
end