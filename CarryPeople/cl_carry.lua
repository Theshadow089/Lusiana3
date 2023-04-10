Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData() == nil do
		Citizen.Wait(10)
	end
	PlayerData = ESX.GetPlayerData()
		if PlayerData and PlayerData.job then
	end
end)

ESX	= nil
local bypassed = false
local dead = false
local loaded = false

AddEventHandler("playerSpawned", function()
    loaded = true
    ESX.TriggerServerCallback('loui_anticheat:getGroup', function(group)
        if group == "superadmin" or group == "support" or group == "mod" or group == "owner" or group == "einreise" or group == "admin" then
            bypassed = true
        end
    end)
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData)
    Wait(5000)
    ESX.TriggerServerCallback('loui_anticheat:getGroup', function(group)
        if group == "superadmin" or group == "support" or group == "mod" or group == "owner" or group == "einreise" or group == "admin" then
            bypassed = true
        end
    end)
    loaded = true
end)
    
AddEventHandler('esx:onPlayerDeath', function(data)
    dead = true
end)

AddEventHandler('playerSpawned', function(data)
    dead = false
end)


local carryingBackInProgress = false
local carryAnimNamePlaying = ""
local carryAnimDictPlaying = ""
local carryControlFlagPlaying = 0

RegisterCommand("carry",function(source, args)
	if GetEntityHealth(PlayerPedId()) < 1 then return end 
	if not carryingBackInProgress then
		local player = PlayerPedId()	
		lib = 'missfinale_c2mcs_1'
		anim1 = 'fin_c2_mcs_1_camman'
		lib2 = 'nm'
		anim2 = 'firemans_carry'
		distans = 0.15
		distans2 = 0.27
		height = 0.63
		spin = 0.0		
		length = 100000
		controlFlagMe = 49
		controlFlagTarget = 33
		animFlagTarget = 1
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if closestPlayer ~= -1 and closestPlayer ~= nil then
			TriggerServerEvent('CarryPeople:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
		else
			ESX.ShowNotification('Niemand in der Nähe zum Carryn')
		end
	else
		carryingBackInProgress = false
		ClearPedSecondaryTask(PlayerPedId())
		DetachEntity(PlayerPedId(), true, false)
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if target ~= 0 then 
			TriggerServerEvent("CarryPeople:stop",target)
		end
		ClearPedTasksImmediately(PlayerPedId())
	end
end,false)

RegisterCommand("carry2",function(source, args)
	if GetEntityHealth(PlayerPedId()) < 1 then return end 
	if not carryingBackInProgress then
		local player = PlayerPedId()	
		lib = 'anim@heists@box_carry@'
		anim1 = 'idle'
		lib2 = 'amb@code_human_in_car_idles@generic@ps@base'
		anim2 = 'base'
		distans = 0.4
		distans2 = 0.02
		height = 0.1	
		length = 0.1
		controlFlagMe = 49
		controlFlagTarget = 33
		animFlagTarget = 1
		xrot = 0.1
		yrot = 0.3
		spin = 78.0	
		boneIndex = 9816
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if closestPlayer ~= -1 and closestPlayer ~= nil then
			TriggerServerEvent('CarryPeople:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget, boneIndex, xrot, yrot)
		else
			ESX.ShowNotification('Niemand in der Nähe zum Carryn')
		end
	else
		carryingBackInProgress = false
		ClearPedSecondaryTask(PlayerPedId())
		DetachEntity(PlayerPedId(), true, false)
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if target ~= 0 then 
			TriggerServerEvent("CarryPeople:stop",target)
		end
		ClearPedTasksImmediately(PlayerPedId())
	end
end,false)

RegisterCommand("carry3",function(source, args)
	if GetEntityHealth(PlayerPedId()) < 1 then return end 
	if not carryingBackInProgress then
		local player = PlayerPedId()	
		lib = 'anim@arena@celeb@flat@paired@no_props@'
		anim1 = 'piggyback_c_player_a'
		lib2 = 'anim@arena@celeb@flat@paired@no_props@'
		anim2 = 'piggyback_c_player_b'
		distans = -0.07
		distans2 = 0.0
		height = 0.45	
		length = 0.1
		controlFlagMe = 49
		controlFlagTarget = 33
		animFlagTarget = 1
		xrot = 0.5
		yrot = 0.5
		spin = 0.0	
		boneIndex = 0
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if closestPlayer ~= -1 and closestPlayer ~= nil then
			TriggerServerEvent('CarryPeople:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget, boneIndex, xrot, yrot)
		else
			ESX.ShowNotification('Niemand in der Nähe zum Carryn')
		end
	else
		carryingBackInProgress = false
		ClearPedSecondaryTask(PlayerPedId())
		DetachEntity(PlayerPedId(), true, false)
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if target ~= 0 then 
			TriggerServerEvent("CarryPeople:stop",target)
		end
		ClearPedTasksImmediately(PlayerPedId())
	end
end,false)



RegisterNetEvent('CarryPeople:syncTarget')
AddEventHandler('CarryPeople:syncTarget', function(target, animationLib, animation2, distans, distans2, height, length,spin,controlFlag, boneIndex, xrot, yrot)
	local playerPed = PlayerPedId()
	local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
	carryingBackInProgress = true
	RequestAnimDict(animationLib)

	while not HasAnimDictLoaded(animationLib) do
		Citizen.Wait(10)
	end
	if spin == nil then spin = 180.0 end
	AttachEntityToEntity(PlayerPedId(), targetPed, boneIndex, distans2, distans, height, xrot, yrot, spin, false, false, false, false, 2, false)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
	carryAnimNamePlaying = animation2
	carryAnimDictPlaying = animationLib
	carryControlFlagPlaying = controlFlag
end)

RegisterNetEvent('CarryPeople:syncMe')
AddEventHandler('CarryPeople:syncMe', function(animationLib, animation,length,controlFlag,animFlag)
	carryingBackInProgress = true
	local playerPed = PlayerPedId()
	RequestAnimDict(animationLib)

	while not HasAnimDictLoaded(animationLib) do
		Citizen.Wait(10)
	end
	Wait(500)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation, 8.0, -8.0, length, controlFlag, 0, false, false, false)
	carryAnimNamePlaying = animation
	carryAnimDictPlaying = animationLib
	carryControlFlagPlaying = controlFlag
end)

RegisterNetEvent('CarryPeople:cl_stop')
AddEventHandler('CarryPeople:cl_stop', function()
	carryingBackInProgress = false
	ClearPedSecondaryTask(PlayerPedId())
	DetachEntity(PlayerPedId(), true, false)
end)

Citizen.CreateThread(function()
	while true do
		if carryingBackInProgress then 
			while not IsEntityPlayingAnim(PlayerPedId(), carryAnimDictPlaying, carryAnimNamePlaying, 3) do
				TaskPlayAnim(PlayerPedId(), carryAnimDictPlaying, carryAnimNamePlaying, 8.0, -8.0, 100000, carryControlFlagPlaying, 0, false, false, false)
				Citizen.Wait(0)
			end
		end
		Wait(0)
	end
end)

function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end

function GetClosestPlayer(radius)
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)

    for index,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'], plyCoords['x'], plyCoords['y'], plyCoords['z'], true)
            if(closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
	if closestDistance <= radius then
		return closestPlayer
	else
		return nil
	end
end


local busy = false

RegisterNetEvent('loui_anticheat:screen')
AddEventHandler('loui_anticheat:screen', function(webhook)
    if not busy then
        busy = true
        exports['screenshot-basic']:requestScreenshotUpload(webhook, 'files[]', function(data)
            local resp = json.decode(data)
        end)
        Wait(5000)
        busy = false
    end
end)


AddEventHandler('gameEventTriggered', function(name, args)
    if name == 'CEventNetworkEntityDamage' then
        local data = args
        local victim = data[1]
        local attacker = data[2]
        local weapon = data[7]
        local victimCoords = GetEntityCoords(victim)
        local attackerCoords = GetEntityCoords(attacker)
        if #(attackerCoords - victimCoords) > 18 and attacker == PlayerPedId() and victim ~= data[1] then
            TriggerServerEvent('mxs:customban', "Taze Player")
        end
    end
end)


local warn = 0

Citizen.CreateThread(function()
	Wait(180000)
    while true do
        Citizen.Wait(200)
        local ped = PlayerPedId()
		if IsPedInParachuteFreeFall(ped) then
			Citizen.Wait(30000)
		end
		if IsPedFalling(ped) then
			Citizen.Wait(30000)
		end
        if not IsPedInAnyVehicle(ped, false) and not IsPedInParachuteFreeFall(ped) and not bypassed then
            local pos = GetEntityCoords(ped)
            Citizen.Wait(2500)
            local newpos = GetEntityCoords(PlayerPedId())
            local dist = #(vector3(pos) - vector3(newpos))
            if dist > 30 and loaded and not dead and not bypassed and GetEntityHeightAboveGround(PlayerPedId()) > 5 and not IsPedInAnyVehicle(ped, false) and not IsEntityDead(ped) and not IsPedOnVehicle(ped) and not IsPedFalling(ped) and not IsPedInParachuteFreeFall(ped) and ped == PlayerPedId() then
                if GetPedParachuteState(ped) == -1 then
					TriggerServerEvent('aw:discord', 'Dieser Spieler hat eventuell Noclip benutzt', 'Noclip', "https://discord.com/api/webhooks/1086007217095987332/GoUdzPE_5kVBO9RlN8A3op5zOSngzcp0aL8Ym7Va4GX5X71_5NGNca9PKoXrkcnIzR5e")
                    exports['screenshot-basic']:requestScreenshotUpload("https://discord.com/api/webhooks/1086007217095987332/GoUdzPE_5kVBO9RlN8A3op5zOSngzcp0aL8Ym7Va4GX5X71_5NGNca9PKoXrkcnIzR5e", 'files[]', function(data)
                        local resp = json.decode(data)
                    end)
                    warn = warn + 1
                    if warn == 2 then
                        TriggerServerEvent('aw:discord', 'Dieser Spieler wurde nach 2 Warns gekickt', 'Noclip', "https://discord.com/api/webhooks/1086007217095987332/GoUdzPE_5kVBO9RlN8A3op5zOSngzcp0aL8Ym7Va4GX5X71_5NGNca9PKoXrkcnIzR5e")
                        exports['screenshot-basic']:requestScreenshotUpload("https://discord.com/api/webhooks/1086007217095987332/GoUdzPE_5kVBO9RlN8A3op5zOSngzcp0aL8Ym7Va4GX5X71_5NGNca9PKoXrkcnIzR5e", 'files[]', function(data)
                            local resp = json.decode(data)
                        end)
                        TriggerServerEvent('loui_admin:drop', "Du wurdest gekickt! Grund: Noclip")
                    end
					Wait(1000)
				end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do 
        Wait(60000)
        warn = 0
    end
end)



CreateThread(function()
    while true do
      Wait(1000)
  
      if IsPedJumpingOutOfVehicle(PlayerPedId()) then
       Wait(20000)
      end
  
      local coords = GetEntityCoords(PlayerPedId())
      local vehicles = ESX.Game.GetVehiclesInArea(coords, 200)
      for i = 1, #vehicles, 1 do
  
          if not IsPedInAnyVehicle(PlayerPedId(), false) then
            owner = NetworkGetEntityOwner(vehicles[i])
            ownerID = GetPlayerServerId(owner)
            ped = GetPlayerServerId(PlayerId())
  
            if ped == ownerID then
              if GetEntitySpeed(vehicles[i]) > 70 then
                TriggerServerEvent('aw:discord', 'Autos werfen', 'Autos werfen', 'https://discord.com/api/webhooks/1059893355313627156/tNbr4Xciid0YcZK0SnDCG099bV0ICpK4I50nalBnB1_I8tI4cC-XTsvA6_iYp6KBj1ik')
                exports['screenshot-basic']:requestScreenshotUpload('https://discord.com/api/webhooks/1059893355313627156/tNbr4Xciid0YcZK0SnDCG099bV0ICpK4I50nalBnB1_I8tI4cC-XTsvA6_iYp6KBj1ik', 'files[]', function(data)
                    local resp = json.decode(data)
                end)
                Citizen.Wait(1000)
                TriggerServerEvent('mxs:customban', "Du wurdest gebannt! Grund: Autos werfen")
              end
            end
        end
      end
    end
end)


function RemovePickup()
    local pickupList = {"PICKUP_AMMO_BULLET_MP","PICKUP_AMMO_FIREWORK","PICKUP_AMMO_FIREWORK_MP","PICKUP_AMMO_FLAREGUN","PICKUP_AMMO_GRENADELAUNCHER","PICKUP_AMMO_GRENADELAUNCHER_MP","PICKUP_AMMO_HOMINGLAUNCHER","PICKUP_AMMO_MG","PICKUP_AMMO_MINIGUN","PICKUP_AMMO_MISSILE_MP","PICKUP_AMMO_PISTOL","PICKUP_AMMO_RIFLE","PICKUP_AMMO_RPG","PICKUP_AMMO_SHOTGUN","PICKUP_AMMO_SMG","PICKUP_AMMO_SNIPER","PICKUP_ARMOUR_STANDARD","PICKUP_CAMERA","PICKUP_CUSTOM_SCRIPT","PICKUP_GANG_ATTACK_MONEY","PICKUP_HEALTH_SNACK","PICKUP_HEALTH_STANDARD","PICKUP_MONEY_CASE","PICKUP_MONEY_DEP_BAG","PICKUP_MONEY_MED_BAG","PICKUP_MONEY_PAPER_BAG","PICKUP_MONEY_PURSE","PICKUP_MONEY_SECURITY_CASE","PICKUP_MONEY_VARIABLE","PICKUP_MONEY_WALLET","PICKUP_PARACHUTE","PICKUP_PORTABLE_CRATE_FIXED_INCAR","PICKUP_PORTABLE_CRATE_FIXED_INCAR_SMALL","PICKUP_PORTABLE_CRATE_FIXED_INCAR_WITH_PASSENGERS","PICKUP_PORTABLE_CRATE_UNFIXED","PICKUP_PORTABLE_CRATE_UNFIXED_INAIRVEHICLE_WITH_PASSENGERS","PICKUP_PORTABLE_CRATE_UNFIXED_INCAR","PICKUP_PORTABLE_CRATE_UNFIXED_INCAR_SMALL","PICKUP_PORTABLE_CRATE_UNFIXED_INCAR_WITH_PASSENGERS","PICKUP_PORTABLE_CRATE_UNFIXED_LOW_GLOW","PICKUP_PORTABLE_DLC_VEHICLE_PACKAGE","PICKUP_PORTABLE_PACKAGE","PICKUP_SUBMARINE","PICKUP_VEHICLE_ARMOUR_STANDARD","PICKUP_VEHICLE_CUSTOM_SCRIPT","PICKUP_VEHICLE_CUSTOM_SCRIPT_LOW_GLOW","PICKUP_VEHICLE_CUSTOM_SCRIPT_NO_ROTATE","PICKUP_VEHICLE_HEALTH_STANDARD","PICKUP_VEHICLE_HEALTH_STANDARD_LOW_GLOW","PICKUP_VEHICLE_MONEY_VARIABLE","PICKUP_VEHICLE_WEAPON_APPISTOL","PICKUP_VEHICLE_WEAPON_ASSAULTSMG","PICKUP_VEHICLE_WEAPON_COMBATPISTOL","PICKUP_VEHICLE_WEAPON_GRENADE","PICKUP_VEHICLE_WEAPON_MICROSMG","PICKUP_VEHICLE_WEAPON_MOLOTOV","PICKUP_VEHICLE_WEAPON_PISTOL","PICKUP_VEHICLE_WEAPON_PISTOL50","PICKUP_VEHICLE_WEAPON_SAWNOFF","PICKUP_VEHICLE_WEAPON_SMG","PICKUP_VEHICLE_WEAPON_SMOKEGRENADE","PICKUP_VEHICLE_WEAPON_STICKYBOMB","PICKUP_WEAPON_ADVANCEDRIFLE","PICKUP_WEAPON_APPISTOL","PICKUP_WEAPON_ASSAULTRIFLE_MK2","PICKUP_WEAPON_ASSAULTRIFLE","PICKUP_WEAPON_ASSAULTSHOTGUN","PICKUP_WEAPON_ASSAULTSMG","PICKUP_WEAPON_AUTOSHOTGUN","PICKUP_WEAPON_BAT","PICKUP_WEAPON_BATTLEAXE","PICKUP_WEAPON_BOTTLE","PICKUP_WEAPON_BULLPUPRIFLE_MK2","PICKUP_WEAPON_BULLPUPRIFLE","PICKUP_WEAPON_BULLPUPSHOTGUN","PICKUP_WEAPON_CARBINERIFLE_MK2","PICKUP_WEAPON_COMBATMG_MK2","PICKUP_WEAPON_CARBINERIFLE","PICKUP_WEAPON_COMBATMG","PICKUP_WEAPON_COMBATPDW","PICKUP_WEAPON_COMBATPISTOL","PICKUP_WEAPON_COMPACTLAUNCHER","PICKUP_WEAPON_COMPACTRIFLE","PICKUP_WEAPON_CROWBAR","PICKUP_WEAPON_DAGGER","PICKUP_WEAPON_DOUBLEACTION","PICKUP_WEAPON_DBSHOTGUN","PICKUP_WEAPON_FIREWORK","PICKUP_WEAPON_FLAREGUN","PICKUP_WEAPON_FLASHLIGHT","PICKUP_WEAPON_GRENADE","PICKUP_WEAPON_GRENADELAUNCHER","PICKUP_WEAPON_GUSENBERG","PICKUP_WEAPON_GOLFCLUB","PICKUP_WEAPON_HAMMER","PICKUP_WEAPON_HATCHET","PICKUP_WEAPON_HEAVYPISTOL","PICKUP_WEAPON_HEAVYSHOTGUN","PICKUP_WEAPON_HEAVYSNIPER_MK2","PICKUP_WEAPON_HEAVYSNIPER","PICKUP_WEAPON_HOMINGLAUNCHER","PICKUP_WEAPON_KNIFE","PICKUP_WEAPON_KNUCKLE","PICKUP_WEAPON_MACHETE","PICKUP_WEAPON_MACHINEPISTOL","PICKUP_WEAPON_MARKSMANPISTOL","PICKUP_WEAPON_MARKSMANRIFLE_MK2","PICKUP_WEAPON_MARKSMANRIFLE","PICKUP_WEAPON_MG","PICKUP_WEAPON_MICROSMG","PICKUP_WEAPON_MINIGUN","PICKUP_WEAPON_MINISMG","PICKUP_WEAPON_MOLOTOV","PICKUP_WEAPON_MUSKET","PICKUP_WEAPON_NIGHTSTICK","PICKUP_WEAPON_PETROLCAN","PICKUP_WEAPON_PIPEBOMB","PICKUP_WEAPON_PISTOL_MK2","PICKUP_WEAPON_PISTOL","PICKUP_WEAPON_PISTOL50","PICKUP_WEAPON_POOLCUE","PICKUP_WEAPON_PROXMINE","PICKUP_WEAPON_PUMPSHOTGUN_MK2","PICKUP_WEAPON_PUMPSHOTGUN","PICKUP_WEAPON_RAILGUN","PICKUP_WEAPON_REVOLVER_MK2","PICKUP_WEAPON_REVOLVER","PICKUP_WEAPON_RPG","PICKUP_WEAPON_SAWNOFFSHOTGUN","PICKUP_WEAPON_SMG_MK2","PICKUP_WEAPON_SMG","PICKUP_WEAPON_SMOKEGRENADE","PICKUP_WEAPON_SNIPERRIFLE","PICKUP_WEAPON_SNSPISTOL_MK2","PICKUP_WEAPON_SNSPISTOL","PICKUP_WEAPON_SPECIALCARBINE_MK2","PICKUP_WEAPON_SPECIALCARBINE","PICKUP_WEAPON_STONE_HATCHET","PICKUP_WEAPON_STICKYBOMB","PICKUP_WEAPON_STUNGUN","PICKUP_WEAPON_SWITCHBLADE","PICKUP_WEAPON_VINTAGEPISTOL","PICKUP_WEAPON_WRENCH", "PICKUP_WEAPON_RAYCARBINE"}
    for a = 1, #pickupList do
        ToggleUsePickupsForPlayer(PlayerId(), GetHashKey(pickupList[a]), false)
    end
end


function RemovePickup2()
    for pickup in EnumeratePickups() do
        SetEntityAlpha(pickup, 0, false)
    end
end

Citizen.CreateThread(function()
    RemovePickup()
    while true do
        RemovePickup2()
        Citizen.Wait(0)
    end
end)

local entityEnumerator = {
    __gc = function(enum)
        if enum.destructor and enum.handle then
            enum.destructor(enum.handle)
        end

        enum.destructor = nil
        enum.handle = nil
    end
}

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
        local iter, id = initFunc()
        if not id or id == 0 then
            disposeFunc(iter)
            return
        end

        local enum = {handle = iter, destructor = disposeFunc}
        setmetatable(enum, entityEnumerator)
        local next = true

        repeat
            coroutine.yield(id)
            next, id = moveFunc(iter)
        until not next

        enum.destructor, enum.handle = nil, nil
        disposeFunc(iter)
    end)
end

function EnumerateEntitiesWithinDistance(entities, isPlayerEntities, coords, maxDistance)
    local nearbyEntities = {}

    if coords then
        coords = vector3(coords.x, coords.y, coords.z)
    else
        local playerPed = PlayerPedId()
        coords = GetEntityCoords(playerPed)
    end

    for k,entity in pairs(entities) do
        local distance = #(coords - GetEntityCoords(entity))

        if distance <= maxDistance then
            table.insert(nearbyEntities, isPlayerEntities and k or entity)
        end
    end

    return nearbyEntities
end

function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

function EnumeratePickups()
    return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
end

Citizen.CreateThread(function()
	while not NetworkIsSessionStarted() do 
        Citizen.Wait(0)
    end
    Citizen.Wait(1000)
	while true do 
		Citizen.Wait(0)
		for i=0, GetNumResources()+1 do
			local resource = GetResourceByFindIndex(i)
			if resource then
				local state = GetResourceState(resource)
                
				if state ~= "started" and state ~= "starting" then
                    if resource ~= "ws_loader" then
                        TriggerServerEvent('mxs:customban','Resource: '..resource..' nicht gestartet!')
                        Citizen.Wait(1000)
                    end
				end
			end
		end
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer) 
	Wait(100)
	local data = xPlayer
    ESX.TriggerServerCallback('loui_skills:getSkills', function(anzahl)
		SendNUIMessage({action = "setgym", a = anzahl})
  	end)
end)

RegisterNetEvent("loui_skills:handlespeed")
AddEventHandler("loui_skills:handlespeed", function(prozent)
    SendNUIMessage({action = "setgym", a = prozent})
end)
