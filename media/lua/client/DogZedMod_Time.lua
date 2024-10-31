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
        LuaEventManager.AddEvent("OnClockUpdate")
        DogZedMod.startTiming()
        DogZedMod.isClockActive = true
    end
end)
-----------------------     osc*       ---------------------------
OSC = {}
Events.OnGameStart.Add(function()
    if isIngameState() then
        LuaEventManager.AddEvent("OnOscillatorShift")
        OSC.OscPrint = false
        OSC.startOscillator()
    end
end)

function OSC.startOscillator()
    local pl = getPlayer()
    local count = 0
    local max = 100
    local min = 0
    local step = 1
    local forward = true
    local backward = false
    OSC.OscDir = OSC.OscDir or forward
    local prevOsc = OSC.OscDir

    OSC.isOscillator = true
    OSC.Oscillation = OSC.Oscillation or 0

    local function update_count()
        prevOsc = OSC.OscDir
        if forward then
            count = count + step
            OSC.OscDir = true
        elseif backward then
            count = count - step
            OSC.OscDir = false
        end
        if OSC.OscDir ~= prevOsc then triggerEvent("OnOscillatorShift", OSC.OscDir, OSC.OscillatorColor) end
    end

    function OSC.Oscillator()
        update_count()
        if not OSC.isOscillator then
            Events.OnTick.Remove(OSC.Oscillator)
            return
        end
        if count >= max then
            forward = false
            backward = true
        elseif count <= min then
            forward = true
            backward = false
        end
        if count % 2 == 0 then
            OSC.Oscillation = count/100
        end
        if getCore():getDebug() and OSC.OscPrint then
            local osc =  OSC.Oscillation
            local rgb = luautils.getConditionRGB(osc)
            OSC.OscillatorColor = rgb
            if pl then
                pl:setHaloNote(tostring(),rgb.r,rgb.g,rgb.b,100)
                print("Count:", osc)
            end
        end

    end
    Events.OnTick.Add(OSC.Oscillator)
end

function OSC.stopOscillator()
    OSC.isOscillator = nil
end

function OSC.getOsc()
    return OSC.Oscillation or nil
end

function OSC.getOscDir()
    return OSC.OscDir or nil
end


function OSC.setOscPrint(bool)
    if bool == nil then
        OSC.OscPrint = not OSC.OscPrint
    else
        OSC.OscPrint = bool
    end
end




