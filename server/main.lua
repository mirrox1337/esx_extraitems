ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Oxygen Mask
ESX.RegisterUsableItem('oxygen_mask', function(source)
	TriggerClientEvent('esx_extraitems:oxygen_mask', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('oxygen_mask', 1)
end)

-- Bullet-Proof Vest
ESX.RegisterUsableItem('bulletproof', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:bulletproof', source)
	xPlayer.removeInventoryItem('bulletproof', 1)
end)

-- First Aid Kit
ESX.RegisterUsableItem('firstaidkit', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:firstaidkit', source)
	xPlayer.removeInventoryItem('firstaidkit', 1)
end)

-- Weapon Clip
ESX.RegisterUsableItem('clip', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:clipcli', source)
	xPlayer.removeInventoryItem('clip', 1)
end)

-- Carcleankit
ESX.RegisterUsableItem('carcleankit', function(source)
	TriggerClientEvent('esx_extraitems:carcleankit', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('carcleankit', 1)
end)

--Cigarette
ESX.RegisterUsableItem('cigarett', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local lighter = xPlayer.getInventoryItem('lighter')
	
		if lighter.count > 0 then
			xPlayer.removeInventoryItem('cigarett', 1)
			TriggerClientEvent('esx_cigarett:startSmoke', source)
		else
			TriggerClientEvent('esx:showNotification', source, ('Du har ingen ~r~tändare'))
		end
end)

ESX.RegisterUsableItem('cigaretter', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    TriggerClientEvent('esx_cigarett:openCigarettes', source)
	xPlayer.removeInventoryItem('cigaretter', 1)
	Citizen.Wait(3000)
    xPlayer.addInventoryItem('cigarett', 20)

end)

--Snus
ESX.RegisterUsableItem('snus', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)
    
    TriggerClientEvent('esx_snus:useSnus', source)
    Citizen.Wait(1500)
    xPlayer.removeInventoryItem('snus', 1)

end)

ESX.RegisterUsableItem('snusdosa', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)

    TriggerClientEvent('esx_snus:openSnusdosa', source)
    xPlayer.removeInventoryItem('snusdosa', 1)
    xPlayer.addInventoryItem('snus', 25)

end)

--Paraply
ESX.RegisterUsableItem('paraply', function(source)
	TriggerClientEvent('esx_extraitems:paraply', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('paraply', 1)
end)

--Picknick
ESX.RegisterUsableItem('picknick', function(source)
	TriggerClientEvent('esx_extraitems:picknick', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('picknick', 1)
end)

--Ros
ESX.RegisterUsableItem('rose', function(source)
	TriggerClientEvent('esx_extraitems:rose', source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('rose', 1)
end)