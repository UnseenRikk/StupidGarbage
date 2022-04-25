Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/UnseenRikk/StupidGarbage/main/LinoriaRX.lua'))();

local Players = game:GetService("Players");
local LocalPlayer = Players.LocalPlayer;
local ShopMenu = LocalPlayer.PlayerGui.Shop.Frame.ScrollingFrame
local BowlPart = game.Workspace.Bowl.Part
local Money = LocalPlayer.leaderstats.Money
local PlayerName = LocalPlayer.Name

local MainWindow = Library:CreateWindow('Raise A Floppa');

local hacktab = MainWindow:AddTab('hack');
local hacktabbox = hacktab:AddLeftTabbox();

local hack = hacktabbox:AddTab('hack');
hack:AddLabel('why would u hack in this game xd');
hack:AddToggle('AutoClicker', { Text = 'Auto clicker' });
hack:AddToggle('AutoPickupMoney', { Text = 'Auto pickup money' });
hack:AddToggle('AutoRefill', { Text = 'Auto refill bowl (dont use)' });

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

local function HasFood()
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == PlayerName then
            if table.find(v:GetChildren(), "Floppa Food") then
                return true
            else
                return false
            end;
        end;
    end;
end;

local function Refill()
    if Money.Value < 50 then
    else
        if HasFood() == false then
            for i,v in pairs(getconnections(ShopMenu.Food.Purchase.MouseButton1Click)) do
                v:Fire()
            end;
            Wait(0.25)
        end;
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-38, 7, -17)
        Wait(0.25)
        fireproximityprompt(BowlPart.ProximityPrompt)
    end;
end;

task.spawn(function()
    while game:GetService('RunService').RenderStepped:Wait() do
        if Toggles.AutoRefill.Value then
            if BowlPart.Transparency == 1 then
                Refill()
                Wait(1)
            end;
        end;
    end;
end);

Library:Notify('bad hack loaded');