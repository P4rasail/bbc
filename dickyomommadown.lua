while true do
	wait();
	if game:IsLoaded() then
		break;
	end;
end;
_G.Streaks = true;
local v1 = require(game.ReplicatedStorage.Modules.Lightning);
local v2 = require(game.ReplicatedStorage.Modules.Xeno);
local v3 = require(game.ReplicatedStorage.Modules.CameraShaker);
local l__TweenService__4 = game.TweenService;
local l__Debris__5 = game.Debris;
local v6 = require(game.ReplicatedStorage.Modules.CameraShaker);
local l__LocalPlayer__1 = game.Players.LocalPlayer;
local l__Debris__10 = game.Debris
local l__ReplicatedStorage__2 = game.ReplicatedStorage
local v52
local v67

if _G.STOMPEFFECTS_ENABLED == nil then
	_G.STOMPEFFECTS_ENABLED = true

	--if game["Run Service"]:IsStudio() then
	--	warn(`[{script.Name}][_G] Set _G.STOMPEFFECTS_ENABLED to {_G.STOMPEFFECTS_ENABLED}`)
	--end
end

local Cooldown = true
function CheckForFX(p1, p2, p3)
	-- if Cooldown == true then
	--	Cooldown = false
	local Char = p2.Parent

	if not Char:FindFirstChild('Died') and game.ReplicatedStorage.KillFX:FindFirstChild(p1) then
		require(script.FX).RunStompFx(p1, p2, p3, l__LocalPlayer__1, { function(p4)
		end });
	else
		return
	end
	--wait(5)
	--Cooldown = true
	--end	
end;
local v7 = {
	Megalodon = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.294118, 0.635294, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0, 0.733333, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.117647, 0.454902, 1)) }
	}, 
	Raycodex = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.407843, 0.407843, 0.407843)), ColorSequenceKeypoint.new(0.5, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.368627, 0.368627, 0.368627)) }
	}, 
	RoadRoller = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0.862745, 0.0823529)), ColorSequenceKeypoint.new(0.5, Color3.new(0.792157, 0.701961, 0)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.862745, 0.0823529)) }
	}, 
	Shapeshifter = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.105882, 1, 0.00784314)), ColorSequenceKeypoint.new(0.5, Color3.new(0.113725, 0, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.0470588, 1, 0)) }
	}, 
	Ornamental = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.290196, 1, 0.490196)), ColorSequenceKeypoint.new(0.25, Color3.new(0.835294, 0.368627, 0.290196)), ColorSequenceKeypoint.new(0.5, Color3.new(0.709804, 0.376471, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.00392157, 0.152941, 1)) }
	}, 
	["Candy Cane"] = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(0.2, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.75, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)) }
	}, 
	Subzero = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 0.45098, 1)), ColorSequenceKeypoint.new(0.49, Color3.new(0, 0.784314, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.584314, 0.729412, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)) }
	}, 
	Zoku = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0.74902, 0)), ColorSequenceKeypoint.new(0.49, Color3.new(0.835294, 0.568627, 0.0392157)), ColorSequenceKeypoint.new(0.5, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)) }
	}, 
	Sailor = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0.952941, 0.701961)), ColorSequenceKeypoint.new(1, Color3.new(0.901961, 1, 0)) }
	}, 
	["Holy Judgment"] = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0.952941, 0.701961)), ColorSequenceKeypoint.new(1, Color3.new(0.901961, 1, 0)) }
	}, 
	Hallo = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(0.5, Color3.new(1, 0.254902, 0.0313725)), ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)) }
	}, 
	Samurai = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(0.5, Color3.new(0.564706, 0.564706, 0.564706)), ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)) }
	}, 
	Heaven = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(1, 0.937255, 0.431373)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)) }
	}, 
	Boombox = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 0.231373, 1)), ColorSequenceKeypoint.new(1, Color3.new(0, 0.713725, 0.105882)) }
	}, 
	Wings = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(1, 0.94902, 0.192157)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)) }
	}, 
	Kitten = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.984314, 0.529412, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.85098, 0.298039, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.882353, 0.52549, 1)) }
	}, 
	Plushy = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.988235, 0.847059, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(1, 0.756863, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.988235, 0.847059, 1)) }
	}, 
	Tanya = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.992157, 1, 0.470588)), ColorSequenceKeypoint.new(0.5, Color3.new(1, 0.8, 0.00392157)), ColorSequenceKeypoint.new(1, Color3.new(0.992157, 1, 0.470588)) }
	}, 
	Plush = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.988235, 0.847059, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.784314, 0.764706, 0.756863)), ColorSequenceKeypoint.new(1, Color3.new(0.988235, 0.847059, 1)) }
	}, 
	Witten = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.984314, 0.529412, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.556863, 0.0117647, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.882353, 0.52549, 1)) }
	}, 
	Spirit = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.67451, 0.67451, 0.67451)), ColorSequenceKeypoint.new(1, Color3.new(0.67451, 0.67451, 0.67451)) }
	}, 
	Ruby = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.67451, 0.67451, 0.67451)), ColorSequenceKeypoint.new(1, Color3.new(0.67451, 0.67451, 0.67451)) }
	}, 
	Lotus = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.67451, 0.67451, 0.67451)), ColorSequenceKeypoint.new(1, Color3.new(0.67451, 0.67451, 0.67451)) }
	}, 
	Pacman = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.67451, 0.67451, 0.67451)), ColorSequenceKeypoint.new(1, Color3.new(0.67451, 0.67451, 0.67451)) }
	}, 
	["Gates of Heaven"] = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.67451, 0.67451, 0.67451)), ColorSequenceKeypoint.new(0.5, Color3.new(0.67451, 0.67451, 0.67451)), ColorSequenceKeypoint.new(1, Color3.new(0.968627, 1, 0.32549)) }
	}, 
	Kitty = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.956863, 0.870588, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.956863, 0.870588, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.647059, 0.996078)) }
	}, 
	UFO = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 0.231373, 1)), ColorSequenceKeypoint.new(1, Color3.new(0, 0.713725, 0.105882)) }
	}, 
	Lightning = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 0.231373, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0, 0.713725, 0.105882)), ColorSequenceKeypoint.new(1, Color3.new(0.698039, 0.172549, 1)) }
	}, 
	["Despair Cage"] = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 0.231373, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0, 0.713725, 0.105882)), ColorSequenceKeypoint.new(1, Color3.new(0.698039, 0.172549, 1)) }
	}, 
	Kurumi = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)) }
	}, 
	Money = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)) }
	}, 
	["Primary Bomb"] = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)) }
	}, 
	["Ice Capsule"] = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)) }
	}, 
	Thanos = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.333333, 0, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.333333, 0, 1)) }
	}, 
	Goth = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.333333, 0, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.333333, 0, 1)) }
	}, 
	Thunder = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.333333, 0, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.333333, 0, 1)) }
	}, 
	Confetti = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 1, 0.0823529)), ColorSequenceKeypoint.new(1, Color3.new(0, 1, 0.0823529)) }
	}, 
	Wobble = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 1, 0.0823529)), ColorSequenceKeypoint.new(1, Color3.new(0, 1, 0.0823529)) }
	}, 
	Serpent = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 1, 0.0823529)), ColorSequenceKeypoint.new(1, Color3.new(0, 1, 0.0823529)) }
	}, 
	Rings = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 1, 0.0823529)), ColorSequenceKeypoint.new(1, Color3.new(0, 1, 0.0823529)) }
	}, 
	Mario = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.333333, 0, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.333333, 0, 1)) }
	}, 
	Glitch = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)) }
	}, 
	Rainbow = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 0.568627, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0, 1, 0.133333)), ColorSequenceKeypoint.new(1, Color3.new(0.8, 0, 1)) }
	}, 
	Diamond = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 0.568627, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0, 1, 0.133333)), ColorSequenceKeypoint.new(1, Color3.new(0.8, 0, 1)) }
	}, 
	Rock = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 0.568627, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0, 1, 0.133333)), ColorSequenceKeypoint.new(1, Color3.new(0.8, 0, 1)) }
	}, 
	Sakura = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 0.568627, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0, 1, 0.133333)), ColorSequenceKeypoint.new(1, Color3.new(0.8, 0, 1)) }
	}, 
	D4C = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 0.568627, 1)), ColorSequenceKeypoint.new(1, Color3.new(0, 1, 0.133333)) }
	}, 
	Dragon = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(0.5, Color3.new(0.67451, 0.67451, 0.67451)), ColorSequenceKeypoint.new(1, Color3.new(0.67451, 0.67451, 0.67451)) }
	}, 
	Dragonite = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0.627451, 0.627451)), ColorSequenceKeypoint.new(0.5, Color3.new(0.67451, 0.384314, 0.384314)), ColorSequenceKeypoint.new(1, Color3.new(0.67451, 0.352941, 0.352941)) }
	}, 
	Kurohitsugi = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.415686, 0, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.701961, 0, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.356863, 0, 0.792157)) }
	}, 
	["Ice Phoenix"] = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.14902, 0.658824, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0, 0.65098, 1)), ColorSequenceKeypoint.new(1, Color3.new(0, 0.898039, 1)) }
	}, 
	Sero = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 0.568627, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0, 1, 0.133333)), ColorSequenceKeypoint.new(1, Color3.new(0.8, 0, 1)) }
	}, 
	Rift = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.129412, 0.258824, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.0313725, 0.164706, 0.654902)) }
	}, 
	Rune = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 1, 1)), ColorSequenceKeypoint.new(0.25, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(0.5, Color3.new(0.917647, 1, 0)), ColorSequenceKeypoint.new(0.75, Color3.new(1, 0, 0.917647)), ColorSequenceKeypoint.new(1, Color3.new(0.133333, 1, 0)) }
	}, 
	["Dimension Slash "] = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(0.25, Color3.new(0.505882, 0, 0)), ColorSequenceKeypoint.new(0.5, Color3.new(1, 0.352941, 0.352941)), ColorSequenceKeypoint.new(0.75, Color3.new(0.505882, 0, 0)), ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)) }
	}, 
	Jetpack = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 0.231373, 1)), ColorSequenceKeypoint.new(1, Color3.new(0, 0.713725, 0.105882)) }
	}, 
	Ghost = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)) }
	}, 
	Portal = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.333333, 0, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.333333, 0, 1)) }
	}, 
	Balloons = {
		Rotate = false, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.333333, 0, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.333333, 0, 1)) }
	}, 
	["Shiny Spirit"] = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0, 1, 1)), ColorSequenceKeypoint.new(0.25, Color3.new(0.596078, 0.933333, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0, 0.45098, 1)), ColorSequenceKeypoint.new(0.75, Color3.new(0.596078, 0.933333, 1)), ColorSequenceKeypoint.new(1, Color3.new(0, 0.568627, 1)) }
	}, 
	["Soul Taker"] = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0.819608)), ColorSequenceKeypoint.new(0.25, Color3.new(0.607843, 0.054902, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.486275, 0.188235, 1)), ColorSequenceKeypoint.new(0.75, Color3.new(0.615686, 0.227451, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0.819608)) }
	}, 
	Spooky = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(0.490196, 0, 0.407843)), ColorSequenceKeypoint.new(0.5, Color3.new(0.486275, 0.188235, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.490196, 0, 0.407843)) }
	}, 
	Conqueror = {
		Rotate = true, 
		Color = { ColorSequenceKeypoint.new(0, Color3.new(1, 0.67451, 0.219608)), ColorSequenceKeypoint.new(0.5, Color3.new(1, 0.545098, 0.145098)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.67451, 0.219608)) }
	}
};

function ScaleParticle(p1, p2, p3)
	p1.Speed = NumberRange.new(p2.Min * p3, p2.Max * p3);
	p1.Drag = p2.Drag * p3;
	p1.Acceleration = p2.Acceleration * p3;
	local v8 = {};
	local v9, v10, v11 = pairs(p2.Size.Keypoints);
	while true do
		local v12, v13 = v9(v10, v11);
		if v12 then

		else
			break;
		end;
		v11 = v12;
		v8[v12] = NumberSequenceKeypoint.new(v13.Time, v13.Value * p3, v13.Envelope * p3);	
	end;
	p1.Size = NumberSequence.new(v8);
end;

local function u7(p6, p7, p8)
	return p6 * (1 - p8) + p7 * p8;
end;

local u2 = {};
game:GetService("Players").LocalPlayer.Character.AncestryChanged:Connect(function()
	for v8, v9 in pairs(u2) do
		u2[v9] = nil;
		_G[v9] = nil;
	end;
end);
local l__Parent__3 = script.Parent;
function AddSoundToClick()
	l__Parent__3.Sound:Play();
end;
local u4 = false;
function RemoveTheTrade(p5, p6, p7, p8, p9)
	local u5 = nil;
	u5 = p5.MouseButton1Click:Connect(function()
		if u4 == false then
			game.ReplicatedStorage.MainEvent:FireServer("RemoveTrade", p8, p6, p7);
			AddSoundToClick();
			if p9:FindFirstChild("Raycodex") then
				p9.Raycodex:Destroy();
			end;
			u5:Disconnect();
		end;
	end);
end;
local u6 = 0;
function AddUpToTrade(p10, p11, p12, p13)
	local u7 = nil;
	u7 = p10.MouseButton1Click:Connect(function()
		if u4 == false then
			game.ReplicatedStorage.MainEvent:FireServer("AddUpTrade", p13, p11, p12);
			AddSoundToClick();
			Instance.new("StringValue", p10).Name = "Raycodex";
			u7:Disconnect();
		end;
	end);
	l__Parent__3.Changed:Connect(function()
		if l__Parent__3.Visible == false then
			u6 = 0;
			u7:Disconnect();
		end;
	end);
end;
function AddButton(p14, p15, p16)
	local u8 = p14.MouseButton1Click:Connect(function()
		if u4 == false then
			game.ReplicatedStorage.MainEvent:FireServer(p16, p15);
		end;
		AddSoundToClick();
	end);
	l__Parent__3.Changed:Connect(function()
		if l__Parent__3.Visible == false then
			u8:Disconnect();
		end;
	end);
end;
local u9 = nil;
function LoadTradesUp(p17, p18, p19)
	if game.Players:FindFirstChild(p17) then
		l__Parent__3.Visible = true;
		local v10, v11, v12 = pairs(l__Parent__3.SPL.Inventory:GetChildren());
		while true do
			local v13, v14 = v10(v11, v12);
			if v13 then

			else
				break;
			end;
			v12 = v13;
			if v14:IsA("Frame") then
				v14:Destroy();
			end;		
		end;
		local v15, v16, v17 = pairs(l__Parent__3.FPL.Inventory:GetChildren());
		while true do
			local v18, v19 = v15(v16, v17);
			if v18 then

			else
				break;
			end;
			v17 = v18;
			if v19:IsA("Frame") then
				v19:Destroy();
			end;		
		end;
		local v20 = game.Players:FindFirstChild(p17);
		local v21, v22, v23 = pairs(l__LocalPlayer__1.Information.Inventory:GetChildren());
		while true do
			local v24, v25 = v21(v22, v23);
			if v24 then

			else
				break;
			end;
			local v26 = game.ReplicatedStorage.UrInventorySon:Clone();
			v26.Name = string.sub(v25.Name, 3);
			v26.Parent = l__Parent__3.FPL.Inventory;
			if v7[string.sub(v25.Name, 3)] ~= nil then
				v26.TextButton.UIGradient.Enabled = true;
				v26.TextButton.UIGradient.Color = ColorSequence.new(v7[string.sub(v25.Name, 3)].Color);
				if v7[string.sub(v25.Name, 3)].Rotate == true then
					game.TweenService:Create(v26:FindFirstChild("TextButton"):FindFirstChild("UIGradient"), TweenInfo.new(2.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {
						Rotation = 360
					}):Play();
				else
					v26.TextButton.UIGradient.Rotation = 0;
				end;
			end;
			if string.sub(v25.Name, 1, 1) == "K" then
				AddUpToTrade(v26.TextButton, v25, p18, p19);
				v26.TextButton.Text = string.sub(v25.Name, 3);
			elseif string.sub(v25.Name, 1, 1) == "R" then
				AddUpToTrade(v26.TextButton, v25, p18, p19);
				v26.TextButton.Text = string.sub(v25.Name, 3);
			elseif string.sub(v25.Name, 1, 1) == "T" then
				AddUpToTrade(v26.TextButton, v25, p18, p19);
				v26.TextButton.Text = string.sub(v25.Name, 3);
			end;		
		end;
		if p18 == "B" then
			l__Parent__3.UI.FP.Text = l__LocalPlayer__1.Name;
			l__Parent__3.UI.SP.Text = v20.Name;
		else
			l__Parent__3.UI.FP.Text = v20.Name;
			l__Parent__3.UI.SP.Text = l__LocalPlayer__1.Name;
		end;
		l__Parent__3.UI.TITLE.Text = "Trade with " .. v20.Name;
		u9 = "Trade with " .. v20.Name;
		local v27, v28, v29 = pairs(l__Parent__3.UI:GetDescendants());
		while true do
			local v30, v31 = v27(v28, v29);
			if v30 then

			else
				break;
			end;
			v29 = v30;
			if v31:IsA("TextButton") then
				if v31.Name == "TextButton" then
					v31.Text = "";
				end;
			end;		
		end;
		AddButton(l__Parent__3.UI.Accept, p19, "AcceptTrade");
		AddButton(l__Parent__3.UI.Decline, p19, "DeclineTrade");
		l__Parent__3.FPL.TextLabel.Text = l__LocalPlayer__1.Name .. "'s inventory";
		local v32, v33, v34 = pairs(v20.Information.Inventory:GetChildren());
		while true do
			local v35, v36 = v32(v33, v34);
			if v35 then

			else
				break;
			end;
			local v37 = game.ReplicatedStorage.UrInventorySon:Clone();
			v37.Parent = l__Parent__3.SPL.Inventory;
			v37.Name = string.sub(v36.Name, 3);
			if string.sub(v36.Name, 1, 1) == "K" then
				v37.TextButton.Text = string.sub(v36.Name, 3);
			elseif string.sub(v36.Name, 1, 1) == "R" then
				v37.TextButton.Text = string.sub(v36.Name, 3);
			elseif string.sub(v36.Name, 1, 1) == "T" then
				v37.TextButton.Text = string.sub(v36.Name, 3);
			end;
			if v7[string.sub(v36.Name, 3)] ~= nil then
				v37.TextButton.UIGradient.Enabled = true;
				v37.TextButton.UIGradient.Color = ColorSequence.new(v7[string.sub(v36.Name, 3)].Color);
				if v7[string.sub(v36.Name, 3)].Rotate == true then
					game.TweenService:Create(v37:FindFirstChild("TextButton"):FindFirstChild("UIGradient"), TweenInfo.new(2.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {
						Rotation = 360
					}):Play();
				else
					v37.TextButton.UIGradient.Rotation = 0;
				end;
			end;		
		end;
		l__Parent__3.SPL.TextLabel.Text = v20.Name .. "'s inventory";
	end;
end;
l__LocalPlayer__1.Chatted:Connect(function(p20)
	if p20:sub(1, 6) == "!trade" and p20:sub(1, 7) ~= "!trades" then
		game.ReplicatedStorage.MainEvent:FireServer("CreateTrade", string.split(p20, " ")[2]);
	end;
end);
local u10 = 0;
game.ReplicatedStorage.MainEvent.OnClientEvent:Connect(function(...)
	local v38 = { ... };
	print(v38)
	if v38[1] == "FX_KILL" then
		if _G.STOMPEFFECTS_ENABLED == true then
			local v39, v40 = workspace.CurrentCamera:WorldToScreenPoint(v38[3].Position);
			local v41 = v38[3].Position + Vector3.new(0, 10, 0);
			local v42, v43 = game.Workspace:FindPartOnRayWithWhitelist(Ray.new(v41, (l__LocalPlayer__1.Character.PrimaryPart.Position - v41).unit * 250), { workspace.MAP, l__LocalPlayer__1.Character });
			if (v40 or v42) and (l__LocalPlayer__1.Character.PrimaryPart.Position - v38[3].Position).Magnitude <= 300 then
				CheckForFX(v38[2], v38[3], v38[4]);
				return;
			end;
		end;
	elseif v38[1] == "Trade" then
		local v44 = v38[2];
		local u11 = v38[3];
		v44.ChildAdded:Connect(function(p21)
			wait();
			if p21.Name ~= u11 .. "1" and p21.Name ~= u11 .. "2" and p21.Name ~= u11 .. "3" and p21.Name ~= u11 .. "4" then
				if game.Players:FindFirstChild(p21.Name) == nil then
					local v45, v46, v47 = pairs(l__Parent__3.SPL.Inventory:GetChildren());
					while true do
						local v48, v49 = v45(v46, v47);
						if not v48 then
							break;
						end;
						local v50 = nil;
						if v49:IsA("Frame") then
							v50 = v49.TextButton;
						end;
						if v50 ~= nil and v49.Name == string.sub(p21.ARG.Value.Name, 3) and v50.Text == string.sub(p21.ARG.Value.Name, 3) then
							v50.Text = "";
							local v51 = string.sub(p21.ARG.Value.Name, 3);
							if v7[v51] ~= nil then
								l__Parent__3.UI[p21.Name].TextButton.UIGradient.Enabled = true;
								l__Parent__3.UI[p21.Name].TextButton.UIGradient.Color = ColorSequence.new(v7[v51].Color);
								if v7[v51].Rotate == true then
									game.TweenService:Create(l__Parent__3.UI[p21.Name]:FindFirstChild("TextButton"):FindFirstChild("UIGradient"), TweenInfo.new(2.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 1), {
										Rotation = 360
									}):Play();
								else
									l__Parent__3.UI[p21.Name].TextButton.UIGradient.Rotation = 0;
								end;
							end;
							v50.UIGradient.Enabled = false;
							l__Parent__3.UI[p21.Name].TextButton.Text = string.sub(p21.ARG.Value.Name, 3);
							return;
						end;
					end;
					return;
				else
					if l__Parent__3.UI.SP.Text == p21.Name .. " (ACCEPTED)" then
						local l__SP__52 = l__Parent__3.UI.SP;
					else
						v52 = l__Parent__3.UI.FP;
					end;
					v52.Text = p21.Name;
					return;
				end;
			end;
			u6 = u6 + 1;
			local v53, v54, v55 = pairs(l__Parent__3.FPL.Inventory:GetChildren());
			while true do
				local v56, v57 = v53(v54, v55);
				if not v56 then
					break;
				end;
				local v58 = nil;
				if v57:IsA("Frame") then
					v58 = v57.TextButton;
				end;
				if v58 ~= nil and v57.Name == string.sub(p21.ARG.Value.Name, 3) and v58.Text == string.sub(p21.ARG.Value.Name, 3) and v58:FindFirstChild("Raycodex") then
					l__Parent__3.UI[p21.Name].TextButton.Text = string.sub(p21.ARG.Value.Name, 3);
					local v59 = string.sub(p21.ARG.Value.Name, 3);
					if v7[v59] ~= nil then
						l__Parent__3.UI[p21.Name].TextButton.UIGradient.Enabled = true;
						l__Parent__3.UI[p21.Name].TextButton.UIGradient.Color = ColorSequence.new(v7[v59].Color);
						if v7[v59].Rotate == true then
							game.TweenService:Create(l__Parent__3.UI[p21.Name]:FindFirstChild("TextButton"):FindFirstChild("UIGradient"), TweenInfo.new(2.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 1), {
								Rotation = 360
							}):Play();
						else
							l__Parent__3.UI[p21.Name].TextButton.UIGradient.Rotation = 0;
						end;
					end;
					v58.Text = "";
					v58.UIGradient.Enabled = false;
					RemoveTheTrade(l__Parent__3.UI[p21.Name].TextButton, p21.ARG.Value, u11, v44, v58);
					return;
				end;			
			end;
		end);
		v44.ChildRemoved:Connect(function(p22)
			if p22.Name ~= u11 .. "1" and p22.Name ~= u11 .. "2" and p22.Name ~= u11 .. "3" and p22.Name ~= u11 .. "4" then
				if game.Players:FindFirstChild(p22.Name) == nil then
					u10 = u10 + 1;
					u4 = u10;
					task.delay(0, function()
						for v60 = 3, 0, -1 do
							if u10 ~= u10 then
								break;
							end;
							l__Parent__3.UI.TITLE.Text = u9 .. " (" .. v60 .. ")";
							task.wait(1);
						end;
						l__Parent__3.UI.TITLE.Text = u9;
						if u10 == u10 then
							u4 = false;
						end;
					end);
					local v61, v62, v63 = pairs(l__Parent__3.SPL.Inventory:GetChildren());
					while true do
						local v64, v65 = v61(v62, v63);
						if not v64 then
							break;
						end;
						local v66 = nil;
						if v65:IsA("Frame") then
							v66 = v65.TextButton;
						end;
						if v66 ~= nil and v65.Name == string.sub(p22.ARG.Value.Name, 3) and v66.Text == "" then
							l__Parent__3.UI[p22.Name].TextButton.Text = "";
							l__Parent__3.UI[p22.Name].TextButton.UIGradient.Rotation = 0;
							l__Parent__3.UI[p22.Name].TextButton.UIGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)) });
							if string.sub(p22.Value, 1, 1) ~= "R" then
								v66.Text = string.sub(p22.Value, 3);
							else
								v66.Text = BrickColor.new(string.sub(p22.Value, 3)).Name;
							end;
							v66.UIGradient.Enabled = true;
							return;
						end;					
					end;
					return;
				else
					if l__Parent__3.UI.SP.Text == p22.Name then
						local l__SP__67 = l__Parent__3.UI.SP;
					else
						v67 = l__Parent__3.UI.FP;
					end;
					v67.Text = v67.Text .. " (ACCEPTED)";
					return;
				end;
			end;
			u10 = u10 + 1;
			u4 = u10;
			task.delay(0, function()
				for v68 = 3, 0, -1 do
					if u10 ~= u10 then
						break;
					end;
					l__Parent__3.UI.TITLE.Text = u9 .. " (" .. v68 .. ")";
					task.wait(1);
				end;
				l__Parent__3.UI.TITLE.Text = u9;
				if u10 == u10 then
					u4 = false;
				end;
			end);
			local v69, v70, v71 = pairs(l__Parent__3.FPL.Inventory:GetChildren());
			while true do
				local v72, v73 = v69(v70, v71);
				if not v72 then
					break;
				end;
				local v74 = nil;
				if v73:IsA("Frame") then
					v74 = v73.TextButton;
				end;
				if v74 ~= nil and v73.Name == string.sub(p22.ARG.Value.Name, 3) and v74.Text == "" then
					l__Parent__3.UI[p22.Name].TextButton.Text = "";
					l__Parent__3.UI[p22.Name].TextButton.UIGradient.Rotation = 0;
					l__Parent__3.UI[p22.Name].TextButton.UIGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)) });
					if string.sub(p22.Value, 1, 1) ~= "R" then
						v74.Text = string.sub(p22.Value, 3);
					else
						v74.Text = BrickColor.new(string.sub(p22.Value, 3)).Name;
					end;
					v74.UIGradient.Enabled = true;
					AddUpToTrade(v74, p22.ARG.Value, u11, v44);
					break;
				end;			
			end;
			u6 = u6 - 1;
		end);
		v44.AncestryChanged:Connect(function()
			wait(3);
			l__Parent__3.Visible = false;
		end);
		LoadTradesUp(v38[4], u11, v44);
	end;
end);

game.ReplicatedStorage.MainEvent.OnClientEvent:Connect(function(Name, ...)
	if Name == "Beam" then
		local Arg1, Arg2, Arg3, Arg4, Arg5, Arg6 = ...
		if Arg1.Name == game.Players.LocalPlayer.Name then
			workspace.CurrentCamera.FieldOfView = 120
			game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(5, Enum.EasingStyle.Exponential), {FieldOfView = 70}):Play()

			task.spawn(function()
				wait(7)
				local ThaFovBrah = game.Players.LocalPlayer.DataFolder.Information:FindFirstChild("FOV")
				if ThaFovBrah and tonumber(ThaFovBrah.Value) >= 70 then
					game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(2.5), {FieldOfView = tonumber(ThaFovBrah.Value)}):Play()
				end
			end)
		end

		local l__Position__27 = Arg2;
		local u5 = Arg5

		local v30 = Arg3;
		local l__GalickGun__31 = v30:FindFirstChild("GalickGun");
		game.TweenService:Create(l__GalickGun__31, TweenInfo.new(0.15), {
			Size = Vector3.new(4,4,4)
		}):Play();

		for v32, v33 in pairs(l__GalickGun__31:GetDescendants()) do
			if v33:IsA("ParticleEmitter") and v33.Name ~= "ar" then

				local u8 = 0;
				local u9 = {
					Size = v33.Size, 
					Drag = v33.Drag, 
					Min = v33.Speed.Min, 
					Max = v33.Speed.Max, 
					Acceleration = v33.Acceleration
				};
				task.spawn(function()
					while u8 < 0.25 do
						ScaleParticle(v33, u9, (u7(1, 2, u8 / 0.25)));
						u8 = u8 + game:GetService("RunService").Heartbeat:Wait();
					end;
				end);
			end;
		end;

		local l__Magnitude__34 = (Arg1.HumanoidRootPart.Position - l__Position__27).Magnitude <= 360 and (Arg1.HumanoidRootPart.Position - l__Position__27).Magnitude or 360;
		local SayinOrNot = l__Magnitude__34 >= 300 and true or false
		local v35 = SayinOrNot == true and game.ReplicatedStorage.VFX.Assets[Arg4].HitPartBig:Clone() or game.ReplicatedStorage.VFX.Assets[Arg4].HitPart:Clone() ;
		v35.CFrame = l__GalickGun__31.CFrame;
		v35.Parent = workspace.Ignored;
		game.Debris:AddItem(v35, 6)
		game.TweenService:Create(v35, TweenInfo.new(l__Magnitude__34 / 850, Enum.EasingStyle.Linear), {
			CFrame  = CFrame.new(l__Position__27)
		}):Play();
		for v36, v37 in pairs(game.ReplicatedStorage.VFX.Assets[Arg4].Beam:GetChildren()) do

			local v38 = v37:Clone();
			v38.Parent = l__GalickGun__31;
			v38.Attachment0 = l__GalickGun__31:FindFirstChildOfClass("Attachment");
			v38.Attachment1 = v35.Attachment;
			v38.Width0 = v38.Width0 * 3
			v38.Width1 = ((SayinOrNot == true) and 40 or 20)
			--print(v38.Width1)
			task.delay(3.2, function()

				game.TweenService:Create(v38, TweenInfo.new(1, Enum.EasingStyle.Quint), {
					Width0 = 0, 
					Width1 = 0
				}):Play();

			end)

		end;
		task.spawn(function()
			for v39 = 1, 15 do
				task.wait(0.25);
				local v40 = v1.Bolt((Arg1.HumanoidRootPart.CFrame * CFrame.new(math.random(-10, 10), math.random(-2, 2), math.random(-1, 1))).Position, (CFrame.new(l__Position__27) * CFrame.new(math.random(-10, 10), math.random(-2, 2), math.random(-10, 10))).Position, 25, 0.5, false);
				v40.PulseSpeed = 3;
				v40.PulseLength = 0.5;
				v40.MinRadius = 0;
				v40.MaxRadius = 15;
				v40.FadeLength = 0.25;
				v40.Thickness = 1.75;
				v40.MinTransparency = 0;
				v40.MaxTransparency = 0.4;
				v40.Color = u5;

			end;
		end);
		for v41, v42 in pairs(game.ReplicatedStorage.VFX.Assets[Arg4].ReleaseParticles:GetChildren()) do
			v42:Clone().Parent = l__GalickGun__31:FindFirstChildOfClass("Attachment");
		end;
		task.wait(l__Magnitude__34 / 850);
		for v43, v44 in pairs(v35:GetDescendants()) do
			if v44:IsA("ParticleEmitter") then
				v44.Enabled = true;
			end;
		end;
		for v45, v46 in pairs(game.ReplicatedStorage.VFX.Assets[Arg4].ExplosionParticles:GetChildren()) do
			local v47 = v46:Clone();
			v47.Parent = v35.Attachment;
			v47:Emit(v47:GetAttribute("EmitCount"));
		end;
		if SayinOrNot == true then

			task.spawn(function()
				for v51 = 1, 26 do
					task.wait(0.1);



					local v52 = game.ReplicatedStorage.VFX.Assets[Arg4].Sphere:Clone();
					v52.Parent = workspace.Ignored;
					v52.CFrame = CFrame.new(l__Position__27);
					game.TweenService:Create(v52, TweenInfo.new(0.4), {
						Size = Vector3.new(190, 190, 190), Color = Arg6
					}):Play();
					game.Debris:AddItem(v52, 1)
					task.delay(0.15, function()
						game.TweenService:Create(v52, TweenInfo.new(0.4), {
							Transparency = 1
						}):Play();
					end);
				end;
			end);
		else

			local rock = false
			task.spawn(function()
				for v51 = 1, 26 do
					task.wait(0.1);

					if rock == false then
						rock = true
						local v26 = v1.Bolt(l__Position__27 + Vector3.new(math.random(-70, 70), math.random(-60, 60), math.random(-60, 60)), l__Position__27 + Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, false);
						v26.PulseSpeed = 1;
						v26.PulseLength = 1;
						v26.FadeLength = 0.5;
						v26.Thickness = 1;
						v26.MinTransparency = 0;
						v26.MaxTransparency = 0.4;
						v26.Color = u5;


						local v336 = CFrame.new(Arg2.X, Arg2.Y+2, Arg2.Z).Position;
						local v337 = {
							RoadRoller = {
								DebrisPositions = { v336, math.random(6, 13), math.random(6, 9) }, 
								Properties = {
									Range = math.random(1, 3), 
									Speed = 0.5, 
									Duration = math.random(1, 4), 
									origPos = v336, 
									newSize = Vector3.new(math.random(30, 50) / 10, math.random(30, 50) / 10, math.random(30, 50) / 10)
								}
							}, 
							GenericSlam = {
								DebrisPositions = { v336, math.random(5, 8), math.random(3, 5) }, 
								Properties = {
									Range = math.random(5, 15) / 10, 
									Speed = 0.75, 
									Duration = math.random(1, 3), 
									origPos = v336, 
									newSize = Vector3.new(math.random(15, 20) / 10, math.random(15, 20) / 10, math.random(15, 20) / 10)
								}
							}, 
							WideSlam = {
								DebrisPositions = { v336, math.random(30, 40), math.random(30, 40) }, 
								Properties = {
									Range = math.random(20, 30), 
									Speed = 1, 
									Duration = 1.5, 
									origPos = v336, 
									newSize = Vector3.new(math.random(50, 70) / 8, math.random(50, 70) / 8, math.random(50, 70) / 8)
								}
							}, 
							LargeSlam = {
								DebrisPositions = { v336, math.random(10, 15), math.random(13, 15) }, 
								Properties = {
									Range = math.random(2, 5), 
									Speed = 0.5, 
									Duration = math.random(3, 7), 
									origPos = v336, 
									newSize = Vector3.new(math.random(30, 50) / 10, math.random(30, 50) / 10, math.random(30, 50) / 10)
								}
							}, 
							BrolyExplosion = {
								DebrisPositions = { v336, math.random(16, 20), math.random(20, 24) }, 
								Properties = {
									Range = math.random(1, 3), 
									Speed = 0.5, 
									Duration = math.random(3, 5), 
									origPos = v336, 
									newSize = Vector3.new(math.random(15, 20) / 3, math.random(15, 20) / 3, math.random(15, 20) / 3)
								}
							}
						};
						local ifzxc  = Arg2
						local v338 = v2.createCircle(unpack(v337["WideSlam"].DebrisPositions));
						for v339 = 1, #v338 do
							local v340 = v2.RayCastOnMap(v338[v339], Vector3.new(0, -15, 0), true);
							if v340 then
								if ifzxc == true then

									local debz = game.ReplicatedStorage.VFX.Assets.StonesLOL:Clone()
									debz.Parent = workspace.Ignored
									debz.CFrame = CFrame.new(v340.Position)
									game.Debris:AddItem(debz,  5)
									task.delay(.5, function()
										for i, v in pairs(debz:GetDescendants()) do
											if v:IsA("ParticleEmitter") then
												v.Enabled = false
											end
										end
									end)
								end
								v2.spawnRubble(v340.Instance, v340.Position, v337["WideSlam"].Properties);
							end;
						end;
						task.delay(.35, function()
							rock = false
						end)
					end


					local v52 = game.ReplicatedStorage.VFX.Assets[Arg4].Sphere:Clone();
					v52.Parent = workspace.Ignored;
					v52.CFrame = CFrame.new(l__Position__27);
					game.TweenService:Create(v52, TweenInfo.new(0.4), {
						Size = Vector3.new(70, 70, 70), Color = Arg6
					}):Play();
					game.Debris:AddItem(v52, 1)
					task.delay(0.15, function()
						game.TweenService:Create(v52, TweenInfo.new(0.4), {
							Transparency = 1
						}):Play();
					end);
				end;
			end);


		end
		task.delay(3.7, function()



			for v56, v57 in pairs(v35:GetDescendants()) do
				if v57:IsA("ParticleEmitter") then
					v57.Enabled = false;
				end;
			end;

			for v56, v57 in pairs(l__GalickGun__31:GetDescendants()) do
				if v57:IsA("ParticleEmitter") then
					v57.Enabled = false;
				end;
			end;
			game.TweenService:Create(l__GalickGun__31, TweenInfo.new(0.5), {
				Size = Vector3.new(0, 0, 0)
			}):Play();
		end);
		return
	end
end)

game.ReplicatedStorage.MainEvent.OnClientEvent:Connect(function(Subject, p55, p56, p57, p58, p59, arguement1, arguement2)
	if Subject == "Explosion" then
		local v46 = v3.new(Enum.RenderPriority.Camera.Value, function(p8)
			workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * p8;
		end);
	end
end)

game.ReplicatedStorage.MainEvent.OnClientEvent:Connect(function(p76, p77, p78, p79, p80, p81, p82, p83, p84)
	if p76 == "Explode" then
		delay(0, function()
			local v245 = l__ReplicatedStorage__2.Explosion:Clone();
			v245.CFrame = p77;
			v245.Parent = workspace.Ignored;
			v245.Sound:Play();
			local v246 = p78 and p78 or 15;
			local v247 = p79 and math.floor(p79 * 1.55) or 23;
			local v248 = l__TweenService__4:Create(v245.Part, TweenInfo.new(0.6), {
				Size = Vector3.new(v247, v247, v247)
			});
			local v249 = l__TweenService__4:Create(v245.Part1.Mesh, TweenInfo.new(0.4), {
				Scale = Vector3.new(v246, v246, v246)
			});
			local v250 = l__TweenService__4:Create(v245.Part2.Mesh, TweenInfo.new(0.4), {
				Scale = Vector3.new(v246, v246, v246)
			});
			l__TweenService__4:Create(v245.Mesh, TweenInfo.new(0.4), {
				Scale = Vector3.new(v246, v246, v246)
			}):Play();
			v248:Play();
			v249:Play();
			v250:Play();
			l__Debris__10:AddItem(v245, 2);
			wait(1);
			l__TweenService__4:Create(v245, TweenInfo.new(1), {
				Transparency = 1
			}):Play();
			l__TweenService__4:Create(v245.Part, TweenInfo.new(0.1), {
				Transparency = 1
			}):Play();
			l__TweenService__4:Create(v245.Part1, TweenInfo.new(1), {
				Transparency = 1
			}):Play();
			l__TweenService__4:Create(v245.Part2, TweenInfo.new(1), {
				Transparency = 1
			}):Play();
		end);
		return;
	end;
end)
