-- Detecting Game --
local detectedGame = "Future thing ;)"

if tostring(game.PlaceId) == '205224386' then
    suggestedScript = "https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/HideAndSeekExtreme.lua"
end
if tostring(game.PlaceId) == '537413528' then
    suggestedScript="https://scripts.luawl.com/MythHub/BaBfT.lua"
end
if tostring(game.PlaceId) == '7991339063' then
    suggestedScript="https://scripts.luawl.com/MythHub/RainbowFriends.lua"
end
if tostring(game.PlaceId) == '8540346411' then
    suggestedScript="https://scripts.luawl.com/MythHub/RebirthChampionsX.lua"
end
if tostring(game.PlaceId) == '9598746251' then
    suggestedScript="https://scripts.luawl.com/MythHub/HomeRunSimulator.lua"
end
if tostring(game.PlaceId) == '13822889' then
    game.Players.LocalPlayer:kick("This script is NOT meant for LT2!!!")
end
if tostring(game.PlaceId) == '10675066724' then
	suggestedScript="https://scripts.luawl.com/MythHub/SlimeTT.lua"
end

-- GUI Loading --
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Ras hub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

local Tab = GUI:Tab{
	Name = "Game scripts",
	Icon = "rbxassetid://8569322835"
}

local Tab = GUI:Tab{
	Name = "General/random scripts",
	Icon = "rbxassetid://8569322835"
}

Tab:Button{
	Name = "CMD X",
	Description = "Run the multi purpose admin script CMD X",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source'))()
	end
}

local Tab = GUI:Tab{
	Name = "Basic game manipulation",
	Icon = "rbxassetid://8569322835"
}

Tab:Slider{
	Name = "Walk speed",
	Default = 16,
	Min = 0,
	Max = 500,
	Callback = (function(Valuew)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Valuew
 
	end)
}

Tab:Slider{
	Name = "Jump Power",
	Default = 16,
	Min = 0,
	Max = 500,
	Callback = (function(Valuej)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Valuej
 
	end)
}

Tab:Button{
	Name = "Inf jump",
	Description = "Run the script that allows you to infintley jump",
	Callback = function()
		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Jump.txt"))()
	end
}

GUI:Credit{
	Name = "Ras_rap",
	Description = "Main hub dev",
	Discord = "Ras_rap#4604"
}
GUI:Credit{
	Name = "KrakenDev",
	Description = "Made the recommended script area and gave me the idea ",
	Discord = "KrakenDev#5518"
}



--local Suggested = Loader.Tab("Suggested", "Auto detected for your game", "")
--local YourGame = Suggested.Folder("For your game", "")
--	if (suggestedScript) then 
--		YourGame.Button("Launch Suggested Script", "Load", function()
--			loadstring(game:HttpGet(suggestedScript))()
--		end)
--	end
--local MainSettings = Loader.Tab("GUI")
--local GUISettings = MainSettings.Folder("GUI Settings", "Control the GUI")
  --  KillGUI = GUISettings.Button("Self Drestruct GUI", "Delete evidence", function()
    --        game:GetService("CoreGui").Luminosity:Destroy()
      --  end)
--local PremTab = Loader.Tab("Slayer unleashed")
--	local Buy = PremTab.Folder("commands", ".Kill Player -- Kills Player.Kill Mob -- Kills Mob.Kill Mobs -- Kills All MobsALIASES: | .Murder | .Erase | .Dump | .Eliminate | .End | .Destroy |.Dmg Player -- Makes Player's Health 1.Dmg Mob -- Makes Mob's Health 1.Dmg Mobs -- Makes All Mobs's Health 1ALIASES: | .Damage | .Low | .Lower |.Lk Player -- Loopkills Player.Lk Others -- Loopkills Everyone Else.Lk Random -- Loopkills A Random PlayerALIASES: | .Loopkill | .Loop | .Infkill |.Unlk Player -- Unloopkills Player.Unlk Others -- Unloopkills Everyone ElseALIASES: | .Unloopkill | .Unloop | .Uninfkill |.Infblock Player -- Gives Player Inf Block.Infblock Others -- Gives Everyone Else Inf Block.Infblock All -- Gives Everyone Inf Block.Infblock Random -- Gives A Random Player Inf BlockALIASES: | .Ib | .Semigod | .Infdefense | .Invinsible |.Uninfblock Player -- Takes Player's Inf Block.Uninfblock Others -- Takes Everyone Else's Inf Block.Uninfblock All -- Takes Everyone's Inf Block.Uninfblock Random -- Takes A Random Player's Inf BlockALIASES: | .Unib | .Unsemigod | .Uninfdefense | .Uninvinsible |.Freeze Player -- Freezes Player.Freeze Others -- Freezes Everyone Else.Freeze All -- Freezes Everyone.Freeze Random -- Freezes A Random PlayerALIASES: | .Stop | .Stun | .Infstun | .Permstun |.Unfreeze Player -- Unfreezes Player.Unfreeze Others -- Unfreezes Everyone Else.Unfreeze All -- Unfreezes Everyone.Unfreeze Random -- Unfreezes A Random PlayerALIASES: | .Unstop | .Unstun | .Uninfstun | .Unpermstun |.Removetools Player -- Removes All Tools From Player.Removetools Others -- Removes All Tools From Everyone Else.Removetools All -- Removes All Tools From Everyone.Removetools Random -- Removes All Tools From A Random PlayerALIASES: | .Rt | .Notools | .Untools |.Fling Player -- Flings Player.Fling Others -- Flings Everyone Else.Fling All -- Flings Everyone.Fling Random -- Flings A Random Player.Punish Player -- Sends Player To The Sky And They Cant Reset (Cant Be Stopped).Punish Others -- Sends Everyone Else To The Sky And They Cant Reset (Cant Be Stopped).Punish Random -- Sends A Random Player To The Sky And They Cant Reset (Cant Be Stopped)ALIASE: | .Kick |.Nocooldown -- Removes Cooldowns From Your MovesALIASES: | .Ncd | .Nocool |.Cooldown -- Adds The Cooldowns BackALIASES: | .Unncd | .Unnocool | .Cd | .Cooldown.Unlock -- Unlocks All MovesALIASES: | .Unlockmoves | .Unlockskills |.Ruiplace -- Teleports You To Rui's Circle.Ruirobe -- Gives You Rui's Robe.Finalselection -- Teleports You To The Final Selection NpcALIASES: | .Fs | .Finalplace |.Finalselectionitems -- Gives You Final Selection ItemsALIASES: | .Fsi | .Finalitems |.Hashiraitems -- Gives You All Hashira's ItemsALIASES: | .Eventitems | .Ei |.Yoriichi -- Gives You Yoriichi's HaoriALIASES: | .Yori |.Gamepassitems -- Gives You All Gamepass Accessories ItemsALIASES: | .Gi | .Gamepassaddons |.Ranked -- Gives You All Ranked HaorisALIASES: | .Ri | .Rankeditems |.Drip -- Gives You Drip ItemsALIASES: | .Dripitems |.Obanai -- Gives You Obanai's ItemsALIASES: | .Obanaiitems | .Oi |.Tanjiro -- Gives You Tanjiro's Haori.Nezuko -- Gives You Nezuko's Haori.Zen -- Gives You Zenitsu's Items.Daki -- Gives You Daki's Items.Gyutaro -- Gives You Gyutaro's ItemsALIASE: | .Gyu |.Doma -- Gives You Doma's Items.Kaigaku -- Gives You Kaigaku's Items.Shadow -- Gives You Shadow Blade.Hantengu -- Gives You Hantengu's ItemsALIASE: | .Han |.Kokushibou -- Gives You Kokushibou's ItemsALIASES: | .Koku | .Ki |.Christmas -- Gives You Chirstmas ItemsALIASE: | .Xmas |.Mitsuri -- Gives You Mitsuri's ItemsALIASE: | .Mi |.Sv -- Gives You Snow Village Raid ItemsALIASE: | .Dungeon |.Shirt -- Gives You A Custom Shirt, .Shirt Shirtid Name, Example: .Shirt 6970869929 Rainbow, Find Shirts In Roblox CatalogALIASES: | .Customshirt |.Pants -- Gives You A Custom Pants, .Shirt Shirtid Name, Example: .Pants 6979683018 RainbowPants, Find Pants In Roblox CatalogALIASES: | .Custompants |.Slayermark -- Activates Your Slayer MarkALIASES: | .Sm | .Mark |.Unslayermark -- Deactivates Your Slayer MarkALIASES: | .Unsm | .Unmark |.Sethotkey -- Changes The Key Of The Normal Hotkeys, .Sethotkey Key Command, Example: .Sethotkey K KillALIASE: | .Setkey |.Clear -- Clears Your InventoryALIASE: | .Clean |.Crash -- Crashes The Server.Rejoin -- Rejoins The Same Server Your InALIASE: | .Rj |.Changer -- Loads Changer Gui")
--		CopyDisc = Buy.Button("Execute", "Execute", function()
--			loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/SlayersUnleashedAdmin'),true))()
--			end)
		
--local BuildABoatTab = Loader.Tab("Hide and seek")
--	local BaBScript = BuildABoatTab.Folder("Script", "Run the hide and seek script")
--		BaBExecute = BaBScript.Button("Execute", "Execute)", function()
--			loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/HideAndSeekExtreme.lua", true))()
--			end)
--local TapSimTab = Loader.Tab("Blox fruits")
--	local TapScript = TapSimTab.Folder("Script", "Run the blox fruits")
--		BaBExecute = TapScript.Button("Execute", "Execute", function()
--			loadstring(game:HttpGet("https://rasputin-bf.glitch.me/bloxfruits.lua"))()
--			end)
--local RFTab = Loader.Tab("Rainbow Friends")
--	local RFScript = RFTab.Folder("Script", "Options for the Rainbow Friends script")
--		RFExecute = RFScript.Button("Execute", "Mommy?", function()
--			loadstring(game:HttpGet('https://scripts.luawl.com/MythHub/RainbowFriends.lua'))()
--		end)
--local RCXTab = Loader.Tab("RebirthChampionsX")
--	local RCXScript = RCXTab.Folder("Script", "Options for the RebirthChampionsX script")
--		RCXxecute = RCXScript.Button("Execute", "Bruh.", function()
--			loadstring(game:HttpGet('https://scripts.luawl.com/MythHub/RebirthChampionsX.lua'))()
--		end)
--local HRSTab = Loader.Tab("Home Run Simulator")
--	local HRSScript = HRSTab.Folder("Script", "Options for the Home Run Simulator script")
--		HRSexecute = HRSScript.Button("Execute", "U=Hecker", function()
--			loadstring(game:HttpGet('https://scripts.luawl.com/MythHub/HomeRunSimulator.lua'))()
--		end)
--local SlimeTTTab = Loader.Tab("CMD X")
--	local SlimeTTScript = SlimeTTTab.Folder("CMD X", "Run the CMD X script")
--		SlimeTTExecute = SlimeTTScript.Button("Execute", "Execute", function()
--			loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source'))()
--			end)
