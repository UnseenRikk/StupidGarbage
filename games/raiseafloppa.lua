Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/UnseenRikk/StupidGarbage/main/LinoriaRX.lua'))();

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local MainWindow = Library:CreateWindow('Raise A Floppa');

local hacktab = MainWindow:AddTab('hack');
local hacktabbox = hacktab:AddLeftTabbox();

local hack = hacktabbox:AddTab('hack');
hack:AddToggle('AutoClicker', { Text = 'Auto clicker' });
hack:AddToggle('AutoPickupMoney', { Text = 'Auto pickup money' });

task.spawn(function()
    while game:GetService('RunService').RenderStepped:Wait() do
        if Toggles.AutoClicker.Value then
            local cliccy = game.Workspace.Floppa.ClickDetector
            fireclickdetector(cliccy)
        end;
    end;
end);

task.spawn(function()
    while game:GetService('RunService').RenderStepped:Wait() do
        if Toggles.AutoPickupMoney.Value then
            for i,v in pairs(workspace:GetChildren()) do
                if v.Name == "Money" or v.Name == "Money Bag" then
                    firetouchinterest(LocalPlayer.Character.HumanoidRootPart, v, 0)
                end;
            end;
        end;
    end;
end);

Library:Notify('bad hack loaded');