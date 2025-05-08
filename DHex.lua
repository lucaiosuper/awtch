local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
	Title = "Vulnerability Checker";
	Text = "Looking up for remotes, may take a while.";
	Duration = 2;
})

if game.CoreGui:FindFirstChild("destruct") then
game.CoreGui.destruct:Destroy()
end

local remote = "nil"
local found = false
local enable = false
local loaded = false

local names = {"Delete", "Remove", "Destroy", "DeleteCar", "DestroyCar", "RemoveBoat"}
for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
for _, str in pairs(names) do
if string.match(v.Name, str) and v:IsA("RemoteEvent") then
print("Checking " .. v.Name)
local success, error = pcall(function()
game:GetService("ReplicatedStorage")[v.Name]:FireServer(game:GetService("Players").LocalPlayer.Character.Head)
found = true
end)
if not success then
CoreGui:SetCore("SendNotification", {
	Title = "Vulnerability Checker";
	Text = "Game not vulnerable.";
	Duration = 2;
})
end

if loaded == false and game:GetService("Players").LocalPlayer.Character.Head then
remote = game:GetService("ReplicatedStorage")[v.Name]
enable = true
loaded = true
print("Using " .. v.Name)
CoreGui:SetCore("SendNotification", {
	Title = "Vulnerability Checker";
	Text = "Game vulnerable! enjoy.";
	Duration = 2;
})
end
end
end
end

function work(arg1)
remote:FireServer(arg1)
end

function GetPlayer(String)
   local Found = {}
   local strl = String:lower()
   if strl == "all" then
       for i,v in pairs(game.Players:GetPlayers()) do
           table.insert(Found,v.Name)
       end
   elseif strl == "others" then
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name ~= game.Players.LocalPlayer.Name then
               table.insert(Found,v.Name)
           end
       end  
elseif strl == "me" then
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name == game.Players.LocalPlayer.Name then
               table.insert(Found,v.Name)
           end
       end  
   else
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name:lower():sub(1, #String) == String:lower() then
               table.insert(Found,v.Name)
           end
       end    
   end
   return Found    
end
if enable == true then
local destruct = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local line = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local scripts = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local kill = Instance.new("TextButton")
local kick = Instance.new("TextButton")
local ban = Instance.new("TextButton")
local btools = Instance.new("TextButton")
local nuke = Instance.new("TextButton")
local naked = Instance.new("TextButton")
local blockHead = Instance.new("TextButton")
local faceless = Instance.new("TextButton")
local nolimbs = Instance.new("TextButton")
local hatless = Instance.new("TextButton")
local sink = Instance.new("TextButton")
local rtools = Instance.new("TextButton")
local rlighting = Instance.new("TextButton")
local rmesh = Instance.new("TextButton")
local player = Instance.new("TextBox")
local ragdoll = Instance.new("TextButton")
local shutdown = Instance.new("TextButton")
local punish = Instance.new("TextButton")
local unanchor = Instance.new("TextButton")

--Properties:

destruct.Name = "destruct"
destruct.Parent = game.CoreGui
destruct.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = destruct
main.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.268847764, 0, 0.372854918, 0)
main.Size = UDim2.new(0, 325, 0, 239)
main.Active = true
main.Draggable = true

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.292307675, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 134, 0, 25)
TextLabel.Font = Enum.Font.Roboto
TextLabel.Text = "Destructed_Hex's GUI"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000

line.Name = "line"
line.Parent = main
line.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
line.BorderSizePixel = 0
line.Position = UDim2.new(0, 0, 0.106986806, 0)
line.Size = UDim2.new(0, 325, 0, 6)

ImageLabel.Parent = main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.184615389, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 25, 0, 25)
ImageLabel.Image = "http://www.roblox.com/asset/?id=8388262491"
ImageLabel.ScaleType = Enum.ScaleType.Fit

scripts.Name = "scripts"
scripts.Parent = main
scripts.Active = true
scripts.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
scripts.BorderSizePixel = 0
scripts.Position = UDim2.new(0, 0, 0.134782612, 0)
scripts.Size = UDim2.new(0, 325, 0, 173)
scripts.CanvasSize = UDim2.new(0, 0, 1, 0)

UIGridLayout.Parent = scripts
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 100, 0, 30)

kill.Name = "kill"
kill.Parent = scripts
kill.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
kill.BorderSizePixel = 0
kill.Size = UDim2.new(0, 200, 0, 50)
kill.Font = Enum.Font.Roboto
kill.Text = "Kill"
kill.TextColor3 = Color3.fromRGB(255, 255, 255)
kill.TextSize = 14.000

kick.Name = "kick"
kick.Parent = scripts
kick.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
kick.BorderSizePixel = 0
kick.Size = UDim2.new(0, 200, 0, 50)
kick.Font = Enum.Font.Roboto
kick.Text = "Kick"
kick.TextColor3 = Color3.fromRGB(255, 255, 255)
kick.TextSize = 14.000

ban.Name = "ban"
ban.Parent = scripts
ban.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
ban.BorderSizePixel = 0
ban.Size = UDim2.new(0, 200, 0, 50)
ban.Font = Enum.Font.Roboto
ban.Text = "Ban"
ban.TextColor3 = Color3.fromRGB(255, 255, 255)
ban.TextSize = 14.000

btools.Name = "btools"
btools.Parent = scripts
btools.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
btools.BorderSizePixel = 0
btools.Size = UDim2.new(0, 200, 0, 50)
btools.Font = Enum.Font.Roboto
btools.Text = "Btools"
btools.TextColor3 = Color3.fromRGB(255, 255, 255)
btools.TextSize = 14.000

nuke.Name = "nuke"
nuke.Parent = scripts
nuke.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
nuke.BorderSizePixel = 0
nuke.Size = UDim2.new(0, 200, 0, 50)
nuke.Font = Enum.Font.Roboto
nuke.Text = "Nuke"
nuke.TextColor3 = Color3.fromRGB(255, 255, 255)
nuke.TextSize = 14.000

naked.Name = "naked"
naked.Parent = scripts
naked.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
naked.BorderSizePixel = 0
naked.Size = UDim2.new(0, 200, 0, 50)
naked.Font = Enum.Font.Roboto
naked.Text = "Naked"
naked.TextColor3 = Color3.fromRGB(255, 255, 255)
naked.TextSize = 14.000

blockHead.Name = "blockHead"
blockHead.Parent = scripts
blockHead.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
blockHead.BorderSizePixel = 0
blockHead.Size = UDim2.new(0, 200, 0, 50)
blockHead.Font = Enum.Font.Roboto
blockHead.Text = "BlockHead"
blockHead.TextColor3 = Color3.fromRGB(255, 255, 255)
blockHead.TextSize = 14.000

faceless.Name = "faceless"
faceless.Parent = scripts
faceless.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
faceless.BorderSizePixel = 0
faceless.Size = UDim2.new(0, 200, 0, 50)
faceless.Font = Enum.Font.Roboto
faceless.Text = "Faceless"
faceless.TextColor3 = Color3.fromRGB(255, 255, 255)
faceless.TextSize = 14.000

nolimbs.Name = "nolimbs"
nolimbs.Parent = scripts
nolimbs.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
nolimbs.BorderSizePixel = 0
nolimbs.Size = UDim2.new(0, 200, 0, 50)
nolimbs.Font = Enum.Font.Roboto
nolimbs.Text = "NoLimbs"
nolimbs.TextColor3 = Color3.fromRGB(255, 255, 255)
nolimbs.TextSize = 14.000

hatless.Name = "hatless"
hatless.Parent = scripts
hatless.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
hatless.BorderSizePixel = 0
hatless.Size = UDim2.new(0, 200, 0, 50)
hatless.Font = Enum.Font.Roboto
hatless.Text = "Hatless"
hatless.TextColor3 = Color3.fromRGB(255, 255, 255)
hatless.TextSize = 14.000

sink.Name = "sink"
sink.Parent = scripts
sink.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
sink.BorderSizePixel = 0
sink.Size = UDim2.new(0, 200, 0, 50)
sink.Font = Enum.Font.Roboto
sink.Text = "Sink"
sink.TextColor3 = Color3.fromRGB(255, 255, 255)
sink.TextSize = 14.000

rtools.Name = "rtools"
rtools.Parent = scripts
rtools.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
rtools.BorderSizePixel = 0
rtools.Size = UDim2.new(0, 200, 0, 50)
rtools.Font = Enum.Font.Roboto
rtools.Text = "RTools"
rtools.TextColor3 = Color3.fromRGB(255, 255, 255)
rtools.TextSize = 14.000

rlighting.Name = "rlighting"
rlighting.Parent = scripts
rlighting.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
rlighting.BorderSizePixel = 0
rlighting.Size = UDim2.new(0, 200, 0, 50)
rlighting.Font = Enum.Font.Roboto
rlighting.Text = "RLighting"
rlighting.TextColor3 = Color3.fromRGB(255, 255, 255)
rlighting.TextSize = 14.000

rmesh.Name = "rmesh"
rmesh.Parent = scripts
rmesh.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
rmesh.BorderSizePixel = 0
rmesh.Size = UDim2.new(0, 200, 0, 50)
rmesh.Font = Enum.Font.Roboto
rmesh.Text = "RMesh"
rmesh.TextColor3 = Color3.fromRGB(255, 255, 255)
rmesh.TextSize = 14.000

player.Name = "player"
player.Parent = main
player.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
player.BorderSizePixel = 0
player.Position = UDim2.new(0.0246153846, 0, 0.870292902, 0)
player.Size = UDim2.new(0, 310, 0, 23)
player.ClearTextOnFocus = false
player.Font = Enum.Font.SourceSans
player.PlaceholderColor3 = Color3.fromRGB(152, 152, 152)
player.PlaceholderText = "PLAYER"
player.Text = ""
player.TextColor3 = Color3.fromRGB(255, 255, 255)
player.TextSize = 14.000

ragdoll.Name = "ragdoll"
ragdoll.Parent = scripts
ragdoll.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
ragdoll.BorderSizePixel = 0
ragdoll.Position = UDim2.new(0, 0, 0.898455501, 0)
ragdoll.Size = UDim2.new(0, 100, 0, 24)
ragdoll.Font = Enum.Font.SourceSans
ragdoll.Text = "Ragdoll"
ragdoll.TextColor3 = Color3.fromRGB(255, 255, 255)
ragdoll.TextSize = 14.000

shutdown.Name = "shutdown"
shutdown.Parent = scripts
shutdown.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
shutdown.BorderSizePixel = 0
shutdown.Size = UDim2.new(0, 200, 0, 50)
shutdown.Font = Enum.Font.Roboto
shutdown.Text = "Shutdown"
shutdown.TextColor3 = Color3.fromRGB(255, 255, 255)
shutdown.TextSize = 14.000

punish.Name = "punish"
punish.Parent = scripts
punish.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
punish.BorderSizePixel = 0
punish.Size = UDim2.new(0, 200, 0, 50)
punish.Font = Enum.Font.Roboto
punish.Text = "Punish"
punish.TextColor3 = Color3.fromRGB(255, 255, 255)
punish.TextSize = 14.000

unanchor.Name = "unanchor"
unanchor.Parent = scripts
unanchor.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
unanchor.BorderSizePixel = 0
unanchor.Size = UDim2.new(0, 200, 0, 50)
unanchor.Font = Enum.Font.Roboto
unanchor.Text = "UnAnchor"
unanchor.TextColor3 = Color3.fromRGB(255, 255, 255)
unanchor.TextSize = 14.000

btools.MouseButton1Down:Connect(function()
local Tool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
local Equipped = false

Tool.RequiresHandle = false
Tool.Name = "Destroy Tool"
local Field = Instance.new("SelectionBox",game.Workspace)
local Mouse = game.Players.LocalPlayer:GetMouse()
Field.LineThickness = 0.1
Tool.TextureId = "http://www.roblox.com/asset/?id=12223874"
Tool.Equipped:connect(function()
Equipped = true

while Equipped == true do
if Mouse.Target ~= nil then
Field.Adornee = Mouse.Target
Mouse.Icon = "rbxasset://textures/HammerCursor.png"
else
Field.Adornee = nil
Mouse.Icon = ""
end
wait()
end
end)


Tool.Unequipped:connect(function()
Equipped = false
Field.Adornee = nil
Mouse.Icon = ""
end)

Tool.Activated:connect(function()
if Mouse.Target ~= nil then
remote:FireServer(Mouse.Target, {Value = Mouse.Target})
local ex = Instance.new'Explosion'
ex.BlastRadius = 0
ex.Position = Mouse.Target.Position
ex.Parent = workspace

local AttemptTarget = Mouse.Target
while AttemptTarget ~= nil do
AttemptTarget.Velocity = Vector3.new(0,-1000000000000000,0)
AttemptTarget.CanCollide = false
wait()
end
end
end)
end)

kill.MouseButton1Down:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
            spawn(function()
            work(game:GetService("Players")[v].Character.Head)
end)
end
end)

naked.MouseButton1Down:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
if game:GetService("Players")[v].Character:FindFirstChildOfClass("Shirt") then
spawn(function()
work(game:GetService("Players")[v].Character:FindFirstChildOfClass("Shirt"))
end)
end
if game:GetService("Players")[v].Character:FindFirstChildOfClass("Pants") then
spawn(function()
work(game:GetService("Players")[v].Character:FindFirstChildOfClass("Pants"))
end)
end
if game:GetService("Players")[v].Character:FindFirstChild("Shirt Graphic") then
spawn(function()
work(game:GetService("Players")[v].Character:FindFirstChild("Shirt Graphic"))
end)
end
end
end)

nolimbs.MouseButton1Down:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
one = game:GetService("Players")[v].Character["Right Arm"]
two = game:GetService("Players")[v].Character["Left Arm"]
three = game:GetService("Players")[v].Character["Right Leg"]
go = game:GetService("Players")[v].Character["Left Leg"]

work(one)
work(two)
work(three)
work(go)
end)
end
end)

kick.MouseButton1Down:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
work(game:GetService("Players")[v])
end)
end
end)

nuke.MouseButton1Down:connect(function()
for i,c in pairs(game.Workspace:GetChildren()) do
    all = c
        work(all)
end
end)

blockHead.MouseButton1Down:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
work(game:GetService("Players")[v].Character.Head.Mesh)
end)
end
end)

ban.MouseButton1Down:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
while wait() do
if game:GetService("Players"):FindFirstChild(v) then
work(v)
end
end
end)
end
end)

sink.MouseButton1Down:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
destr = game:GetService("Players")[v].Character["HumanoidRootPart"]
work(destr)
end)
end
end)

faceless.MouseButton1Down:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
destructwashere = game:GetService("Players")[v].Character.Head.face
work(destructwashere)
end)
end
end)

ragdoll.MouseButton1Down:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
e = game:GetService("Players")[v].Character:FindFirstChild("Humanoid")
work(e)
end)
end
end)

rtools.MouseButton1Down:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
sonic = game:GetService("Players")[v]:WaitForChild("Backpack")

for i,v in pairs(sonic:GetChildren()) do
if v:IsA("Tool") then
work(sonic)
end
end
end)
end

rlighting.MouseButton1Down:Connect(function()
headshot = game:GetService("Lighting")
work(headshot)
end)

shutdown.MouseButton1Down:Connect(function()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    y = v
        work(y)
end
end)

hatless.MouseButton1Down:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
destru = game:GetService("Players")[v].Character
for i, v in pairs(destru:GetChildren()) do
    if v:IsA("Accessory") then
        haha = v
        work(haha)
    end
end
end)
end
end)
end)

rmesh.MouseButton1Down:Connect(function()
for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v:IsA("MeshPart") or v:IsA("SpecialMesh") or v:IsA("Mesh") then
work(v)
end
end
end)

punish.MouseButton1Down:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
            spawn(function()
            work(game:GetService("Players")[v].Character)
end)
end
end)

unanchor.MouseButton1Down:Connect(function()
for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v:IsA("Weld") then
work(v)
end
end
end)
end

-- GUI, Scripts/Commands by Luca and Ru$uki.