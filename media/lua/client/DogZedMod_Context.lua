--[[
----------------------------------------------------------------------------------------------------------------------------⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                       ⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣰⣦⣀⣀⠀⠠⠄⠄⠠⠀⠀⢀⣠⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⡿⢿⣦⠀⠀⠀⠀⠀⠀⠀⢀⡷⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⣩⡿⠋⠙⠉⢩⡿⠟⠀⠀⠀⠀⠀⠀⢀⣶⣾⠟⠋⠛⣿⣷⡄⠀⠀⠀⠀⠀⣴⣿⠂⠀⠀⣼⡿⠀⠀⠀⠀⠀⠀⢀⣠⡴⠶⣤⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⠦⠤⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⡿⠋⠀⢸⠏⠀⠀⠀⠀⠀⠀⠀⣼⠃⠀⠀⠀⠀⢠⡇⠀⠀⠀⢠⣾⠋⠀⠀⠀⠀⣸⠀⠀⠀⠀⠀⠀⠀⢠⣿⠋⠀⠀⠀⠀⠛⠛⠁⠀⠀⠀⢀⣾⣿⠏⠀⠀⢀⡿⠃⠀⠀⠀⠀⠀⠶⠋⠁⢀⣰⠟⠀⠀⠀⠀⠀⠀⠀⣹⣿⠀⠀⠀⠀⣨⣿⠇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣾⡟⢀⣠⣤⣴⣶⠆⠀⠀⠀⠀⠀⢰⠃⠀⠀⠀⠀⠀⣾⠀⠀⠀⣰⣿⠃⠀⠀⠀⠀⠀⣿⡀⠀⠀⠀⠀⠀⢀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠋⠀⠀⢀⡾⠁⠀⠀⠀⠀⠀⠀⠀⣠⣶⣯⣅⡀⠀⠀⠀⠀⠀⠀⠀⣿⡇⢀⣠⠴⠞⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣸⡟⠀⠛⠉⣠⣾⠃⠀⠀⠀⠀⠀⠀⣼⠀⠀⠀⠀⠀⠀⢿⣤⡴⢺⢻⠃⠀⠀⠀⠀⠀⢸⡿⠁⠀⠀⠀⠀⠀⠀⢿⠀⠀⠀⠀⢀⣤⠀⠀⠀⠀⠀⢀⣿⣇⡤⠤⢤⣾⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢻⡆⠀⠀⠀⠀⠀⣿⣯⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⠃⠀⠀⢀⣼⠇⠀⠀⠀⠀⠀⠀⣰⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢂⠇⠀⠀⠀⠀⠀⠀⣾⡅⠀⠀⠀⠀⠀⠀⠀⢸⣧⡀⠀⠀⣼⠇⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠐⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠃⠀⠀⠀⠀⠀⢰⡏⠘⣦⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠘⢧⣤⡶⠟⢻⠀⠀⠀⠀⠀⠀⢠⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⠏⠀⠀⠀⠀⠀⠀⢰⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⣶⡾⠋⠀⠀⠀⠀⠀⠀⢸⡟⠀⠀⠀⢰⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠞⠁⠀⠀⠀⠀⠀⠀⠁⠀⠈⠙⠂⠔⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠀⠀⠀⠀⠀⢀⣿⣤⠶⠒⠒⠁⠀⠀⠀⠀⢠⠏⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠐⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

----------------------------------------------------------------------------------------------------------------------------
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
Please contact me if you need to hire someone to do mods or other design related tasks
https://steamcommunity.com/id/glytch3r/myworkshopfiles/
https://ko-fi.com/glytch3r
Discord: Glytch3r#1337 / glytch3r


----------------------------------------------------------------------------------------------------------------------------
--]]


DogZedMod = DogZedMod or {}


function DogZedMod.clipInfoZ(zed)

	local zInfo = getZombieInfo(zed)
	local res = tostring(zed:getOutfitName() )
	res = res ..'\nRealX: '..tostring(zInfo.RealX)
	res = res ..'\nRealY: '..tostring(zInfo.RealY)
	res = res ..'\nX: '..tostring(zInfo.X)
	res = res ..'\nY: '..tostring(zInfo.Y)
	res = res ..'\nTargetX: '..tostring(zInfo.TargetX)
	res = res ..'\nTargetY: '..tostring(zInfo.TargetY)
	res = res ..'\nPathLength: '..tostring(zInfo.PathLength)
	res = res ..'\nTargetLength: '..tostring(zInfo.TargetLength)
	res = res ..'\nclientActionState: '..tostring(zInfo.clientActionState)
	res = res ..'\nclientAnimationState: '..tostring(zInfo.clientAnimationState)
	res = res ..'\nfinderProgress: '..tostring(zInfo.finderProgress)
	res = res ..'\nusePathFind: '..tostring(zInfo.usePathFind)
	res = res ..'\nowner: '..tostring(zInfo.owner)
	Clipboard.setClipboard(res)
	print(res)
end
function DogZedMod.Context(player, context, worldobjects)
	local pl = getSpecificPlayer(player)
	if not pl then return end
	local inv = pl:getInventory()
	local sq = clickedSquare
	local zed
	local worldSquare = nil
	if sq then
		zed = sq:getZombie()

		if (getCore():getDebug() or isAdmin()) then

			local Main = context:addOptionOnTop(getText('ContextMenu_DogZedMod_Debug'))

			local opt = ISContextMenu:getNew(context)
			context:addSubMenu(Main, opt)
			Main.iconTexture = getTexture("media/ui/DogZed_Symbol.png")

			opt:addOption("Mark Alpha", worldobjects, function()
				DogZedMod.markAlpha()
			end);
			opt:addOption("Alpha Z Info", worldobjects, function()
				DogZedMod.clipInfoZ(DogZedMod.getPackAlpha())
			end);










			local ri = opt:addOptionOnTop(getText('ContextMenu_DogZedMod_Reward'))
			local spwnRewardOpt = ISContextMenu:getNew(opt)
			opt:addSubMenu(ri, spwnRewardOpt)




			spwnRewardOpt:addOption("x3", worldobjects, function()
				DogZedMod.SpawnRewards(sq)
				DogZedMod.SpawnRewards(sq)
				DogZedMod.SpawnRewards(sq)
			end);

			spwnRewardOpt:addOption("x1", worldobjects, function()
				DogZedMod.SpawnRewards(sq)
			end);




			local sb = opt:addOptionOnTop(getText('ContextMenu_DogZedMod_Population'))
			local spwn = ISContextMenu:getNew(opt)
			opt:addSubMenu(sb, spwn)

			-----------------------            ---------------------------

			if sq and zed then
				local fit = DogZedMod.getOutfitName(zed)
				if fit then
					opt:addOption('set stats: '..tostring(fit), worldobjects, function()
						DogZedMod.setStats(zed)
					end);
				end
				local isCrawler = DogZedMod.isCrawler(zed)
				if isCrawler then
					local crawlType = zed:getCrawlerType()
					if crawlType then
						--   dbgZed:setCrawlerType(1)  print(dbgZed:getCrawlerType())
						opt:addOption('CrawlerType '..tostring(crawlType), worldobjects, function()
							if crawlType ~= 2 then
								zed:setCrawlerType(2)
							elseif crawlType == 2 then
								zed:setCrawlerType(1)
							end
						end);
					end
				else
					opt:addOption("setCrawler", worldobjects, function()
						DogZedMod.setCrawler(zed)
					end);
				end
				local speedData = zed:getVariableString('AnimSpeed')

				if speedData then
					opt:addOption("AnimSpeed: "..tostring(speedData), worldobjects, function()
						DogZedMod.setAnimSpeed(zed)
					end);
				end

			end
			if sq then

				local sIco = spwn:addOption(getText('ContextMenu_DogZedMod_Spawn').."  x3 [Radiated]", worldobjects, function()
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit0)
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit0)
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit0)
				end);
				local sIco = spwn:addOption(getText('ContextMenu_DogZedMod_Spawn').."  x3 [Shadow]", worldobjects, function()
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit1)
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit1)
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit1)
				end);
				local sIco = spwn:addOption(getText('ContextMenu_DogZedMod_Spawn').."  x3 [Clone]", worldobjects, function()
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit2)
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit2)
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit2)
				end);


				local sIco = spwn:addOption(getText('ContextMenu_DogZedMod_Spawn').." ALL 3 Outfits", worldobjects, function()
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit0)
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit1)
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit2)
				end);

				local sIco = spwn:addOption(getText('ContextMenu_DogZedMod_Spawn').." "..tostring(DogZedMod.outfit0), worldobjects, function()
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit0)
				end);

				local sIco = spwn:addOption(getText('ContextMenu_DogZedMod_Spawn').." "..tostring(DogZedMod.outfit0)..' X2', worldobjects, function()
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit0); DogZedMod.doSpawn(sq, false, DogZedMod.outfit0)
				end);

				local sIco = spwn:addOption(getText('ContextMenu_DogZedMod_Spawn').." "..tostring(DogZedMod.outfit1), worldobjects, function()
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit1)
				end);

				local sIco = spwn:addOption(getText('ContextMenu_DogZedMod_Spawn').." "..tostring(DogZedMod.outfit1)..' X2', worldobjects, function()
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit1); DogZedMod.doSpawn(sq, false, DogZedMod.outfit1);
				end);

				local sIco = spwn:addOption(getText('ContextMenu_DogZedMod_Spawn').." "..tostring(DogZedMod.outfit2), worldobjects, function()
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit2)
				end);

				local sIco = spwn:addOption(getText('ContextMenu_DogZedMod_Spawn').." "..tostring(DogZedMod.outfit2)..' X2', worldobjects, function()
					DogZedMod.doSpawn(sq, false, DogZedMod.outfit2); DogZedMod.doSpawn(sq, false, DogZedMod.outfit2)
				end);


			end

			local sIco2 = spwn:addOption(getText('ContextMenu_DogZedMod_KillDogZeds'), worldobjects, function()
				local rad = 15
				local count = 0
				local cell = pl:getCell()
				local x, y, z = pl:getX(), pl:getY(), pl:getZ()
				for xDelta = -rad, rad do
					for yDelta = -rad, rad do
						local sq = cell:getGridSquare(x + xDelta, y + yDelta, z)
						if sq then
							local zed = sq:getZombie()
							if zed and DogZedMod.isDogZed(zed) then
								count = count + 1
								zed:setAvoidDamage(false)
								zed:changeState(ZombieOnGroundState.instance())
								zed:setAttackedBy(pl)
								--zed:setAttackedBy(getCell():getFakeZombieForHit())
								zed:becomeCorpse()
							end
						end
					end
				end
				if count > 1 then
					print('killed '..tostring(count)..' DogZeds')
				else
					print('killed '..tostring(count)..' DogZed')
				end
			end);



			local sIco2 = spwn:addOption(getText('ContextMenu_DogZedMod_KillZeds'), worldobjects, function()
				local rad = 15
				local count = 0
				local cell = pl:getCell()
				local x, y, z = pl:getX(), pl:getY(), pl:getZ()
				for xDelta = -rad, rad do
					for yDelta = -rad, rad do
						local sq = cell:getGridSquare(x + xDelta, y + yDelta, z)
						if sq then
							local zed = sq:getZombie()
							if zed and not DogZedMod.isDogZed(zed) then
								count = count + 1
								zed:changeState(ZombieOnGroundState.instance())
								zed:setAttackedBy(getCell():getFakeZombieForHit())
								zed:becomeCorpse()
							end
						end
					end
				end
				if count > 1 then
					print('killed '..tostring(count)..' Zeds')
				else
					print('killed '..tostring(count)..' Zed')
				end
			end);

			-----------------------    wear*        ---------------------------
			local sb = opt:addOptionOnTop(getText('ContextMenu_DogZedMod_Outfit'))
			local pldog = ISContextMenu:getNew(opt)
			opt:addSubMenu(sb, pldog)

			if not DogZedMod.isDogPl(pl) then
				local ss = pldog:addOption(getText('ContextMenu_DogZedMod_WearSkin').." RadiatedDog", worldobjects, function()
					DogZedMod.wearDogZed(pl, 0)
					DogZedMod.addHL(pl)
				end);
				local tip = ISWorldObjectContextMenu.addToolTip()
				tip.description = tostring(DogZedMod.isDogPl(pl))
				ss.toolTip = tip

				local ss = pldog:addOption(getText('ContextMenu_DogZedMod_WearSkin').." ShadowDog", worldobjects, function()
					DogZedMod.wearDogZed(pl, 0)
				end);


				local tip = ISWorldObjectContextMenu.addToolTip()
				tip.description = tostring(DogZedMod.isDogPl(pl))
				ss.toolTip = tip


			end


			local ss3 = pldog:addOption(getText("ContextMenu_DogZedMod_RemoveOutfit"), worldobjects, function()
				DogZedMod.clearDogZedSkin(pl)
			end);


		end

	end
end
Events.OnFillWorldObjectContextMenu.Remove(DogZedMod.Context)
Events.OnFillWorldObjectContextMenu.Add(DogZedMod.Context)
