
DogZedMod = DogZedMod or {}

function DogZedMod.findzedID(int)
	local zombies = getCell():getObjectList()
	for i=zombies:size(),1,-1 do
		local zed = zombies:get(i-1)
		if instanceof(zed, "IsoZombie") then
			local zedID=zed:getOnlineID()
			if zedID and zedID == int then return zed end
		end
	end
	return nil
end

-----------------------            ---------------------------
function DogZedMod.checkDist(pl, zed)
	local dist = pl:DistTo(zed:getX(), zed:getY())
    return math.floor(dist)
end

function DogZedMod.isWithinRange(pl, zed, range)
	local dist = pl:DistTo(zed:getX(), zed:getY())
    return dist <= range
end

function DogZedMod.isClosestPl(pl, zed)
	if not DogZedMod.isDogZed(zed) then return end
	local plDist = DogZedMod.checkDist(pl, zed)
	local compare = round(zed:distToNearestCamCharacter())
	if plDist == compare then
		return true
	end
	return false
end
