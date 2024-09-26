------------------------------- [[ Variables ]] --------------------------------
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local BPart = {}

function BPart.Reset()
    local BigPart = game.Workspace['SatDeployed']
    BigPart:ClearAllChildren()
    BigPart.Velocity, BigPart.AssemblyLinearVelocity,BigPart.AssemblyAngularVelocity = Vector3.zero, Vector3.zero, Vector3.zero
    BigPart.Orientation = Vector3.new(90,0,0)
    local BodyPosition = Instance.new("BodyPosition", BigPart);
    BodyPosition.D = 3000
    BodyPosition.P = 30000
    BodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    BodyPosition.Position = Vector3.new(100, 3000, 0)
end

-------------------- [[ Tool Part ]] ---------------------
local Part = game.Workspace:FindFirstChild("SatDeployed")
local Backpack = LocalPlayer.Backpack

local Pause = true

if Backpack:FindFirstChildOfClass("Tool") then
    Backpack:FindFirstChildOfClass("Tool"):Destroy()
end

local Tool = Instance.new("Tool", Backpack)
Tool.Name = "ToolPart " .. math.random(1000,9999)
Tool.RequiresHandle = false
Tool.CanBeDropped = false

game:GetService("RunService").Heartbeat:Connect(function()
    if Pause then return end;
    local RightArm = LocalPlayer.Character["Right Arm"]
    local X = Part.Size.X
    local Y = Part.Size.Y
    local Z = Part.Size.Z

    local TargetAlignment = RightArm.CFrame * CFrame.new(X/2, -Y/2, 0)
    local TargetPosition = TargetAlignment.Position
    local TargetOrientation = RightArm.Orientation

    Part.Position = TargetPosition
    Part.Orientation = TargetOrientation
end)


Tool.Equipped:Connect(function()
    local Part = game.Workspace:FindFirstChild("SatDeployed")
    Part:ClearAllChildren()
    Part.Velocity, Part.AssemblyLinearVelocity,Part.AssemblyAngularVelocity = Vector3.zero, Vector3.zero, Vector3.zero
    Pause = false
end)

Tool.Unequipped:Connect(function()
    BPart.Reset()
    Pause = true
end)

Tool.Activated:Connect(function()
    local Humanoid = LocalPlayer.Character.Humanoid
    local Animation = Instance.new("Animation")
    Animation.AnimationId = "rbxassetid://204062532"
    local Anim = Humanoid:LoadAnimation(Animation)
    Anim:Play()
    Anim:AdjustSpeed(2)

    Anim.Ended:Connect(function()
        Part.Velocity, Part.AssemblyLinearVelocity,Part.AssemblyAngularVelocity = Vector3.zero, Vector3.zero, Vector3.zero
    end)
end)
