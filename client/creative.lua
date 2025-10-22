---By Varguitz for LB-Phone Creative Enchanted
if Config.Framework ~= "creative" then
    return
end
-----------------------------------------------------------------------------------------------------------------------------------------
--- VRP EXTENSION
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

while not NetworkIsSessionStarted() do
    Wait(500)
end

function HasItem(itemName)
    if GetResourceState("ox_inventory") == "started" then
        return (exports.ox_inventory:Search("count", itemName) or 0) > 0
    end
    return true
end
function ApplyVehicleMods(vehicle, vehicleData)
end
function CreateFrameworkVehicle(vehicleData, coords)
end


FrameworkLoaded = true
