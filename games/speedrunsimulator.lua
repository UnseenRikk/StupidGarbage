Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/UnseenRikk/StupidGarbage/main/LinoriaRX.lua'))();

local Players = game:GetService("Players");
local LocalPlayer = Players.LocalPlayer;
local ReplStorage = game:GetService("ReplicatedStorage");
local Remotes = ReplStorage.Remotes;

local MainWindow = Library:CreateWindow('Speed Run Simulator');

local hacktab = MainWindow:AddTab('hack');
local hacktabbox = hacktab:AddLeftTabbox();

local hack = hacktabbox:AddTab('hack');
hack:AddLabel('lol');
hack:AddToggle('AutoPickup', { Text = 'Auto Orb Pickup' });
hack:AddToggle('AutoRebirth', { Text = 'Auto Rebirth' });

task.spawn(function()
    while game:GetService('RunService').RenderStepped:Wait() do
        if Toggles.AutoPickup.Value then
            for i, v in ipairs(game.Workspace.OrbSpawns:GetChildren()) do
				firetouchinterest(LocalPlayer.Character.HumanoidRootPart, v, 0)
			end;
        end;
    end;
end);

local function u1(p1)
	return 500 + math.floor(p1 ^ 2.4 * 500);
end;

task.spawn(function()
    while game:GetService('RunService').RenderStepped:Wait() do
        if Toggles.AutoRebirth.Value then
            if u1(LocalPlayer.leaderstats.Rebirths.Value + 1) < LocalPlayer.leaderstats.Speed.Value then
				Remotes.Rebirth:FireServer();
			end;
        end;
    end;
end);

Library:Notify('bad hack loaded');