Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/UnseenRikk/StupidGarbage/main/LinoriaRX.lua'))();

local Players = game.Players
local LocalPlayer = Players.LocalPlayer;

local MainWindow = Library:CreateWindow('Raise A Floppa');

local hacktab = MainWindow:AddTab('hack');
local hacktabbox = hacktab:AddLeftTabbox();

local hack = hacktabbox:AddTab('hack');
hack:AddLabel('why would u hack in this game xd');
hack:AddToggle('AutoClicker', { Text = 'Auto clicker' });

task.spawn(function()
    while game:GetService('RunService').RenderStepped:Wait() do
        if Toggles.AutoClicker.Value then
            local cliccy = game.Workspace.Floppa.ClickDetector
            fireclickdetector(cliccy)
        end;
    end;
end);

Library:Notify('bad hack loaded');