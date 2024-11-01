DogZedMod = DogZedMod or {}

--[[
<m_Conditions>
    <m_Name>isDogZed</m_Name>
    <m_Type>STRING</m_Type>
    <m_StringValue>isDogZed</m_StringValue>
</m_Conditions>
 ]]
function DogZedMod.isDogChar(targ)
    local isDogZed = (instanceof(targ, "IsoZombie") and DogZedMod.isDogZed(targ))
    local isDogPl = (instanceof(targ, "IsoPlayer") and DogZedMod.isDogPl(targ))
    return isDogZed or isDogPl
end

 --DogZedMod.isClosestPl(pl, zed)

--[[
DogZedMod.isDogZed(zed, isPhysical)
isTargetVisible

alerted
getThumpTimer
isProne
shouldDoFenceLunge
spottedLast
walkVariantUse


setCrawlerType
getCrawlerType
isCanWalk
zed:shouldGetUpFromCrawl()
 ]]

--[[

local areaMultiplier = ZombRAnd(1, 3)
DogZedMod.getRandSq(sq, areaMultiplier)
DogZedMod.setRadiateArea(zed)
DogZedMod.addHL(zed)
DogZedMod.setRadiateSq(sq)
]]

