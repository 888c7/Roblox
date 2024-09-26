-------------------- [[ Variables ]] ---------------------
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
-------------------- [[ Net Bypass ]] ---------------------
if not getgenv().NetworkBypass then
    print("Ran Net Bypass V2")
    getgenv().NetworkBypass = true;
    local function EnablePartControl()
        LocalPlayer.ReplicationFocus = Workspace
        RunService.Heartbeat:Connect(function()
            LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            
            if game.Workspace:FindFirstChild("SatDeployed") then
                workspace.SatDeployed.Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
                workspace.SatDeployed.CanCollide = false
            end
        end)
    end
    EnablePartControl()
end
