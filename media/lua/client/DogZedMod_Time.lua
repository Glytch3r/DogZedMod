DogZedMod = DogZedMod or {}

function DogZedMod.isDay()
	return forageSystem.getTimeOfDay() == 'isDay'
end

function DogZedMod.isNight()
	return forageSystem.getTimeOfDay() == 'isNight'
end

function DogZedMod.getDayTime()
	if DogZedMod.isNight() then return 'Night' end
	if DogZedMod.isDay() then return 'Day' end
	return ''
end

function DogZedMod.getDayTimeInt()
	if DogZedMod.isNight() then return 2 end
	if DogZedMod.isDay() then return 1 end
	return 1
end

-----------------------            ---------------------------
LuaEventManager.AddEvent("OnClockUpdate")
LuaEventManager.AddEvent("OnOscillatorFlow")

function DogZedMod.startTiming ()

    local prevSec = PZCalendar.getInstance():get(Calendar.SECOND)
    function DogZedMod.tick()
        local curSec = PZCalendar.getInstance():get(Calendar.SECOND)
        if prevSec < curSec or (curSec == 1 and (prevSec == 60 or prevSec > curSec)) then
            triggerEvent("OnClockUpdate")
            prevSec = curSec
        end
    end
    Events.OnTick.Add(DogZedMod.tick)
end

Events.OnGameStart.Add(function()
    if isIngameState() then

        DogZedMod.startTiming()
        DogZedMod.isClockActive = true
    end
end)
-----------------------     osc*       ---------------------------

Events.OnGameStart.Add(function()
    if isIngameState() then
        LuaEventManager.AddEvent("OnOscillatorShift")
        LuaEventManager.AddEvent("OnOscillatorFlow")
        DogZedMod.OscPrint = false
        DogZedMod.startOscillator()
    end
end)

function DogZedMod.startOscillator()
    local pl = getPlayer()
    local intensity = 0
    local max = 255
    local min = 0
    local step = 1
    local isForward = true
    DogZedMod.OscIsDirForward = DogZedMod.OscIsDirForward or forward
    local prevOsc = DogZedMod.OscIsDirForward

    DogZedMod.isOscillator = true
    DogZedMod.Oscillation = DogZedMod.Oscillation or 0

    local function update_count()
        prevOsc = DogZedMod.OscIsDirForward
        if isForward then
            intensity = intensity + step
            DogZedMod.OscIsDirForward = true
        else
            intensity = intensity - step
            DogZedMod.OscIsDirForward = false
        end
        if DogZedMod.OscIsDirForward ~= prevOsc then triggerEvent("OnOscillatorShift", DogZedMod.OscIsDirForward) end
    end

    function DogZedMod.Oscillator()
        update_count()
        if not DogZedMod.isOscillator then
            Events.OnTick.Remove(DogZedMod.Oscillator)
            return
        end
        if intensity >= max then
            isForward = false
        elseif intensity <= min then
            isForward = true
        end
        if intensity % 5 == 0 then
            --DogZedMod.Oscillation = intensity/100
            DogZedMod.Oscillation = intensity
            triggerEvent("OnOscillatorFlow", intensity)
        end

    --[[     if getCore():getDebug() and DogZedMod.OscPrint then
            local osc =  DogZedMod.Oscillation
            local rgb = luautils.getConditionRGB(osc)
            DogZedMod.OscillatorColor = rgb
            if pl then
                pl:setHaloNote(tostring(),rgb.r,rgb.g,rgb.b,100)
                print("intensity:", osc)
            end
        end
 ]]
    end
    Events.OnTick.Add(DogZedMod.Oscillator)
end

function DogZedMod.stopOscillator()
    DogZedMod.isOscillator = nil
end

function DogZedMod.getOsc()
    return DogZedMod.Oscillation or nil
end

function DogZedMod.getOscDir()
    return DogZedMod.OscIsDirForward or nil
end

function DogZedMod.setOscPrint(bool)
    if bool == nil then
        DogZedMod.OscPrint = not DogZedMod.OscPrint
    else
        DogZedMod.OscPrint = bool
    end
end





function DogZedMod.isShouldRadiate(zed, pl)
    local range = 12
    --TODO add the sandbox option
    --local range = SandboxVars.DogZedMod.RadiationEffectRange or 12
    if not zed then return false end
    if DogZedMod.isDay() then return false end
    if zed:isDead() then return false end
    if not pl then pl = getPlayer() end
    if not pl:CanSee(zed) then return false end
    return DogZedMod.isWithinRange(pl, zed, range)
end


function DogZedMod.addRadiation(zed, intensity)
    if not zed then return end
    local cell = getCell()
    local radiation
    local lastGlow = zed:getModData()['radiation']

    local x, y, z = zed:getX(), zed:getY(), zed:getZ()
    if lastGlow then
        cell:removeLamppost(lastGlow)
    end
    if x and y and z  then
        lastGlow = IsoLightSource.new(x, y, z, 25, 255, 110, intensity)
        cell:addLamppost(lastGlow)
        zed:getModData()['radiation'] = lastGlow
    end
end

--[[
function DogZedMod.Radiate(intensity)
    local pl = getPlayer(); if not pl then return end
	local zombies = getCell():getObjectList()
	for i=zombies:size(),1,-1 do
		local zed = zombies:get(i-1)
		if DogZedMod.isRadiatedDog(zed) then
            if DogZedMod.isShouldRadiate(zed, pl) then
                DogZedMod.addRadiation(zed, intensity)
            end
		end
	end
end
Events.OnOscillatorFlow.Add(DogZedMod.Radiate)

 ]]