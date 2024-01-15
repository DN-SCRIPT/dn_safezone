local job = ""
local grade = 0
local ESX = nil
local AllCreatedZones = {}
local IsLoopStarted = false
local IsPlayerCanAttackInSafeZone = nil
local UnarmedHash = `WEAPON_UNARMED`
local WhatIsLastLoop = ""

if UseESX then
	Citizen.CreateThread(function()
		while ESX == nil do
			ESX = exports["es_extended"]:getSharedObject()
			Citizen.Wait(10)
		end

		while ESX.GetPlayerData().job == nil do
			Citizen.Wait(100)
		end

		job = ESX.GetPlayerData().job.name
		grade = ESX.GetPlayerData().job.grade
	end)

	RegisterNetEvent("esx:setJob")
	AddEventHandler("esx:setJob", function(NewJob)
		job = NewJob.name
		grade = NewJob.grade
	end)
end

Citizen.CreateThread(function()
	for k, v in pairs(AllZones) do
		local TempTable = {}
		for k2, v2 in ipairs(v.Zones) do
			local TempZone = PolyZone:Create(v2.Coords, {
				name = k .. "_" .. k2,
				minZ = v2.minZ,
				maxZ = v2.maxZ,
				debugPoly = v.Debug,
				debugGrid = v.Debug,
			})
			table.insert(TempTable, TempZone)
		end
		local TempZone
		if #TempTable > 1 then
			TempZone = ComboZone:Create(TempTable, { name = k .. "_combo" })
			TempZone:onPlayerInOut(function(isPointInside, point, zone)
				EnteredZone(isPointInside, k)
			end, CheckLoopTime)
		else
			TempZone = TempTable[1]
			TempZone:onPointInOut(PolyZone.getPlayerPosition, function(isPointInside, point, zone)
				EnteredZone(isPointInside, k)
			end, CheckLoopTime)
		end
		table.insert(AllCreatedZones, TempZone)
	end
end)

function EnteredZone(isPointInside, Name)
	if isPointInside and WhatIsLastLoop ~= Name then
		Citizen.CreateThread(function()
			WhatIsLastLoop = Name
			IsLoopStarted = true
			exports["dn_notify"]:notify('DN City Wire', 'You are in a Safe Zone', 'info') -- dn notify
			while WhatIsLastLoop == Name do
				if not WhiteListedJobs[job] or not WhiteListedJobs[job][Name] or not (WhiteListedJobs[job][Name] <= grade) then -- check player can attack in safezone or not
					local player = PlayerPedId() -- PlayerPedId is optimizer than GetPlayerPed
					SetCurrentPedWeapon(player, UnarmedHash, true) -- Cant carry weapon
					DisablePlayerFiring(player, true)  -- Disables firing all together
					DisableControlAction(0, 140, true) -- R
					DisableControlAction(0, 25, true) -- RIGHT MOUSE BUTTON Aim
					if IsDisabledControlJustPressed(2, 37) or IsDisabledControlJustPressed(0, 24) or IsDisabledControlJustPressed(0, 25) or IsDisabledControlJustPressed(0, 37) then
						TriggerEvent('ox_inventory:disarm')
					end
					IsPlayerCanAttackInSafeZone = false
					Citizen.Wait(5)
				else
					IsPlayerCanAttackInSafeZone = true
					Citizen.Wait(500) -- i put this if player changed his job inside the zone like setjob or off or on duty
				end
			end
			IsPlayerCanAttackInSafeZone = nil
			IsLoopStarted = false
			exports["dn_notify"]:notify('DN City Wire', 'You are not in a Safe Zone', 'info') -- dn notify
		end)
	else
		WhatIsLastLoop = ""
	end
end

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
		return
	end
	for i = 1, #AllCreatedZones do
		AllCreatedZones[i]:destroy() -- if restart script destroy old zones
	end
end)

-- Exports --
InSafeZone = function()
	return IsLoopStarted
end

exports("InSafeZone", InSafeZone)

SafeZoneName = function()
	return WhatIsLastLoop
end

exports("SafeZoneName", SafeZoneName)

CanAttackInSafeZone = function()
	return IsPlayerCanAttackInSafeZone
end

exports("CanAttackInSafeZone", CanAttackInSafeZone)

SetJobAndGrade = function(NewJob, NewGrade)
	job = NewJob
	grade = NewGrade
end

exports("SetJobAndGrade", SetJobAndGrade)
