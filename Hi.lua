--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 20 | Scripts: 7 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.GyatMama
G2L["1"] = Instance.new("ScreenGui", game.CoreGui);
G2L["1"]["Name"] = [[GyatMama]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.GyatMama.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Size"] = UDim2.new(0, 345, 0, 243);
G2L["2"]["Position"] = UDim2.new(0.36449, 0, 0.31173, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundTransparency"] = 0.7;


-- StarterGui.GyatMama.Frame.TextLabel
G2L["3"] = Instance.new("TextLabel", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["TextSize"] = 31;
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["BackgroundTransparency"] = 0.45;
G2L["3"]["Size"] = UDim2.new(0, 345, 0, 41);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Text"] = [[Gyat Mama]];


-- StarterGui.GyatMama.Frame.Frame
G2L["4"] = Instance.new("Frame", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Size"] = UDim2.new(0, 345, 0, 202);
G2L["4"]["Position"] = UDim2.new(0, 0, 0.16872, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["BackgroundTransparency"] = 1;


-- StarterGui.GyatMama.Frame.Frame.Fling
G2L["5"] = Instance.new("TextButton", G2L["4"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 14;
G2L["5"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["Size"] = UDim2.new(0, 149, 0, 31);
G2L["5"]["Name"] = [[Fling]];
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[Fling]];
G2L["5"]["Position"] = UDim2.new(0.02899, 0, 0.03465, 0);


-- StarterGui.GyatMama.Frame.Frame.Fling.LocalScript
G2L["6"] = Instance.new("LocalScript", G2L["5"]);



-- StarterGui.GyatMama.Frame.Frame.Generate Part
G2L["7"] = Instance.new("TextButton", G2L["4"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["Size"] = UDim2.new(0, 154, 0, 31);
G2L["7"]["Name"] = [[Generate Part]];
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[Generate Part]];
G2L["7"]["Position"] = UDim2.new(0.53623, 0, 0.03465, 0);


-- StarterGui.GyatMama.Frame.Frame.Generate Part.LocalScript
G2L["8"] = Instance.new("LocalScript", G2L["7"]);



-- StarterGui.GyatMama.Frame.Frame.Teleport ToPart
G2L["9"] = Instance.new("TextButton", G2L["4"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 14;
G2L["9"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["Size"] = UDim2.new(0, 153, 0, 31);
G2L["9"]["Name"] = [[Teleport ToPart]];
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[Teleport To Part]];
G2L["9"]["Position"] = UDim2.new(0.53623, 0, 0.22772, 0);


-- StarterGui.GyatMama.Frame.Frame.Teleport ToPart.LocalScript
G2L["a"] = Instance.new("LocalScript", G2L["9"]);



-- StarterGui.GyatMama.Frame.Frame.Frame
G2L["b"] = Instance.new("Frame", G2L["4"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["Size"] = UDim2.new(0, 1, 1, 0);
G2L["b"]["Position"] = UDim2.new(0.49565, 0, 0, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.GyatMama.Frame.Frame.Pillar
G2L["c"] = Instance.new("TextButton", G2L["4"]);
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextSize"] = 14;
G2L["c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c"]["Size"] = UDim2.new(0, 149, 0, 31);
G2L["c"]["Name"] = [[Pillar]];
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[Pillar]];
G2L["c"]["Position"] = UDim2.new(0.02899, 0, 0.22772, 0);


-- StarterGui.GyatMama.Frame.Frame.Pillar.LocalScript
G2L["d"] = Instance.new("LocalScript", G2L["c"]);



-- StarterGui.GyatMama.Frame.Frame.Click to Fling
G2L["e"] = Instance.new("TextButton", G2L["4"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["TextSize"] = 14;
G2L["e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e"]["Size"] = UDim2.new(0, 149, 0, 31);
G2L["e"]["Name"] = [[Click to Fling]];
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[Click to Fling]];
G2L["e"]["Position"] = UDim2.new(0.02899, 0, 0.42079, 0);


-- StarterGui.GyatMama.Frame.Frame.Click to Fling.LocalScript
G2L["f"] = Instance.new("LocalScript", G2L["e"]);



-- StarterGui.GyatMama.Frame.Frame.View Part
G2L["10"] = Instance.new("TextButton", G2L["4"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["TextSize"] = 14;
G2L["10"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10"]["Size"] = UDim2.new(0, 153, 0, 31);
G2L["10"]["Name"] = [[View Part]];
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Text"] = [[View Part]];
G2L["10"]["Position"] = UDim2.new(0.53623, 0, 0.42079, 0);


-- StarterGui.GyatMama.Frame.Frame.View Part.LocalScript
G2L["11"] = Instance.new("LocalScript", G2L["10"]);



-- StarterGui.GyatMama.Frame.Frame.Coming Soon ...
G2L["12"] = Instance.new("TextLabel", G2L["4"]);
G2L["12"]["Active"] = true;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["TextSize"] = 14;
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["Size"] = UDim2.new(0, 149, 0, 31);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Text"] = [[Coming soon ...]];
G2L["12"]["Selectable"] = true;
G2L["12"]["Name"] = [[Coming Soon ...]];
G2L["12"]["Position"] = UDim2.new(0.02899, 0, 0.62376, 0);


-- StarterGui.GyatMama.Frame.Frame.Coming Soon ...
G2L["13"] = Instance.new("TextLabel", G2L["4"]);
G2L["13"]["Active"] = true;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["TextSize"] = 14;
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["Size"] = UDim2.new(0, 149, 0, 31);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Text"] = [[Coming soon ...]];
G2L["13"]["Selectable"] = true;
G2L["13"]["Name"] = [[Coming Soon ...]];
G2L["13"]["Position"] = UDim2.new(0.53623, 0, 0.62376, 0);


-- StarterGui.GyatMama.Draggable
G2L["14"] = Instance.new("LocalScript", G2L["1"]);
G2L["14"]["Name"] = [[Draggable]];


----- [[ ########################################################################## ]] -------
------ [[ ########################################################################## ]] -------
------ [[ ########################################################################## ]] -------
------ [[                                MAIN SCRIPT                                 ]] -------
------ [[ ########################################################################## ]] -------
------ [[ ########################################################################## ]] -------
------ [[ ########################################################################## ]] -------

-------------------- [[ Variables ]] ---------------------
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")

local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local humanoidRootPart = Character:WaitForChild("HumanoidRootPart")

-------------------- [[ Net Bypass ]] ---------------------
if not getgenv().Network then
    print("Ran Net")
    getgenv().Network = true;
    local function EnablePartControl()
        LocalPlayer.ReplicationFocus = Workspace
        RunService.Heartbeat:Connect(function()
            LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
        end)
    end
    EnablePartControl()
end

-------------------- [[ Attach Part ]] ---------------------
local Folder = Instance.new("Folder", Workspace)
local Part = Instance.new("Part", Folder)
local Attachment1 = Instance.new("Attachment", Part)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1

-------------------- [[ Fling Function ]] ---------------------
local function ForcePart(v)
    if v:IsA("Part") and not v.Anchored and not v.Parent:FindFirstChild("Humanoid") and not v.Parent:FindFirstChild("Head") and v.Name ~= "Handle" then
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end
        if v:FindFirstChild("AlignPosition") then
            v:FindFirstChild("AlignPosition"):Destroy()
        end
        if v:FindFirstChild("Torque") then
            v:FindFirstChild("Torque"):Destroy()
        end
        v.CanCollide = false
        local Torque = Instance.new("Torque", v)
        Torque.Torque = Vector3.new(9e9, 9e9, 9e9)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torque.Attachment0 = Attachment2
        AlignPosition.MaxForce = 9e9
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 200
        AlignPosition.Attachment0 = Attachment2
        AlignPosition.Attachment1 = Attachment1

        local flinger = Instance.new("BodyAngularVelocity")
        flinger.Parent = v
        flinger.AngularVelocity = Vector3.new(9e9,9e9,9e9)
        flinger.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
        flinger.P = math.huge
    end
end
------ [[ ########################################################################## ]] -------
------ [[ ########################################################################## ]] -------
------ [[ ########################################################################## ]] -------
------ [[                                  BUTTONS                                   ]] -------
------ [[ ########################################################################## ]] -------
------ [[ ########################################################################## ]] -------
------ [[ ########################################################################## ]] -------

local Flinging = false
local attachThread

local function ResetBPart()
    local BigPart = game.Workspace['SatDeployed']

    BigPart:ClearAllChildren()
            
    BigPart.Velocity = Vector3.zero
    BigPart.AssemblyLinearVelocity = Vector3.zero
    BigPart.AssemblyAngularVelocity = Vector3.zero

    local BodyGyro = Instance.new("BodyGyro", BigPart);
    BodyGyro.D = 500
    BodyGyro.MaxTorque = Vector3.new(0, 400000, 400000)
    BodyGyro.P = 3000

    local BodyPosition = Instance.new("BodyPosition", BigPart);
    BodyPosition.D = 3000
    BodyPosition.MaxForce = Vector3.new(4000000, 4000000, 4000000)
    BodyPosition.P = 80000
    BodyPosition.Position = Vector3.new(100, 3000, 0)
end

-- StarterGui.GyatMama.Frame.Frame.Fling.LocalScript
local function C_6()
local script = G2L["6"];
	script.Parent.MouseButton1Down:Connect(function()
		if not game.Workspace:FindFirstChild('SatDeployed') then return end;
        local BigPart = game.Workspace['SatDeployed']
        
        if not Flinging then
            print("Fling")
            
            attachThread = task.spawn(function()
                while RunService.RenderStepped:Wait() do
                    local HRP = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart",10)
                    Attachment1.WorldCFrame = HRP.CFrame
                end
            end)
            ForcePart(BigPart)
        else
            task.cancel(attachThread)
            ResetBPart()
        end
        
        Flinging = not Flinging
	end)
end;
task.spawn(C_6);
-- StarterGui.GyatMama.Frame.Frame.Generate Part.LocalScript
local function C_8()
local script = G2L["8"];
	script.Parent.MouseButton1Down:Connect(function()
		if not game.Workspace:FindFirstChild("SatDeployed") then
            local HRP = LocalPlayer.Character:WaitForChild("HumanoidRootPart",9e9)
            local oldPos = HRP.CFrame

            HRP.CFrame = HRP.CFrame * CFrame.new(100,3000,0)
		    game.Players:Chat("/hat me 4640898 /clearhats")
            task.wait(1)
            HRP.CFrame = oldPos
        end
	end)
end;
task.spawn(C_8);
-- StarterGui.GyatMama.Frame.Frame.Teleport ToPart.LocalScript
local function C_a()
local script = G2L["a"];
	script.Parent.MouseButton1Down:Connect(function()
        local HRoot = LocalPlayer.Character.HumanoidRootPart
        local BPart = game.Workspace['SatDeployed'];
        BPart.CanCollide = false

        if game.Workspace:FindFirstChild("BPartPlataform") then
            game.Workspace.BPartPlataform:Destroy();
        end

        local plataform = Instance.new("Part", game.Workspace)
        plataform.Name = 'BPartPlataform'
        plataform.CFrame = CFrame.new(130, 3000-2, 0)
        plataform.Size = Vector3.new(95,1,95)
        plataform.Anchored = true

        local Face = CFrame.Angles(0,math.rad(90),0)

        HRoot.Velocity = Vector3.new(0,0,0)
        HRoot.CFrame = plataform.CFrame * CFrame.new(0,3.5,0) * Face
	end)
end;
task.spawn(C_a);
-- StarterGui.GyatMama.Frame.Frame.Pillar.LocalScript
local Pillar = false
local function C_d()
local script = G2L["d"];
	script.Parent.MouseButton1Down:Connect(function()
		local BPart = game.Workspace:FindFirstChild("SatDeployed");

        if not Pillar then
            Pillar = true
            BPart.CanCollide = false;
            BPart:ClearAllChildren();

            local Pet = Instance.new("BodyPosition", BPart)
            Pet.D = 400000
            Pet.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            Pet.P = 9e9

            local Offset = Vector3.new(0,0,0)
            local thread = task.spawn(function()
                while task.wait() do
                    local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
                    Pet.Position = HRP.Position + Offset
                end
            end)

            BPart.Velocity = Vector3.zero
            BPart.AssemblyLinearVelocity = Vector3.zero
            BPart.AssemblyAngularVelocity = Vector3.zero
            BPart.Orientation = Vector3.new(0,0,0)
        else
            Pillar = false
            task.cancel(thread)
            ResetBPart()
        end
	end)
end;
task.spawn(C_d);
-- StarterGui.GyatMama.Frame.Frame.Click to Fling.LocalScript
local function C_f()
local script = G2L["f"];
	script.Parent.MouseButton1Down:Connect(function()
        local C2FToggle = true
        local Mouse = LocalPlayer:GetMouse()
        local Holding = false
        
        local MDown
        local MUp

		if C2FToggle then
            print("Click to fling")
            MDown = Mouse.Button1Down:Connect(function()
                local BigPart = game.Workspace['SatDeployed']

                Holding = true
                ForcePart(BigPart)
                BigPart.CanQuery = false;

                task.spawn(function()
                    while Holding do
                        local rayOrigin = workspace.CurrentCamera.CFrame.Position
                        local rayDirection = (Mouse.Hit.Position - rayOrigin).unit * 1000
                        
                        local raycastParams = RaycastParams.new()
                        raycastParams.RespectCanCollide = true;
                        
                        local raycastResult = workspace:Raycast(rayOrigin, rayDirection, raycastParams)

                        if raycastResult and raycastResult.Instance then
                            Attachment1.WorldCFrame = CFrame.new(raycastResult.Position)
                        end
                        
                        RunService.RenderStepped:Wait()
                    end
                end)
            end)

            MUp = Mouse.Button1Up:Connect(function()
                local BigPart = game.Workspace['SatDeployed']
            
                Holding = false
                BigPart:ClearAllChildren()
            
                local BodyGyro = Instance.new("BodyGyro", BigPart);
                BodyGyro.D = 500
                BodyGyro.MaxTorque = Vector3.new(0, 400000, 400000)
                BodyGyro.P = 3000
            
                local BodyPosition = Instance.new("BodyPosition", BigPart);
                BodyPosition.D = 3000
                BodyPosition.MaxForce = Vector3.new(4000000, 4000000, 4000000)
                BodyPosition.P = 10000
                BodyPosition.Position = Vector3.new(100, 3000, 0)
            
            end)

        else
            MDown:Disconnect()
            MUp:Disconnect()
        end

        C2FToggle = not C2FToggle
	end)
end;
task.spawn(C_f);
-- StarterGui.GyatMama.Frame.Frame.View Part.LocalScript
local function C_11()
local script = G2L["11"];
	script.Parent.MouseButton1Down:Connect(function()
        local BigPart = game.Workspace['SatDeployed']
		local Camera = game.Workspace.CurrentCamera;

        if (Camera.CameraSubject.Name == "Humanoid") then
            Camera.CameraSubject = BigPart
        else
            Camera.CameraSubject = LocalPlayer.Character:WaitForChild("Humanoid", 9e9)
        end
	end)
end;
task.spawn(C_11);
-- StarterGui.GyatMama.Draggable
local function C_14()
local script = G2L["14"];
	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent.Frame
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.04, true)
	end
	
	local function onInputBegan(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end
	
	local allowedClasses = {
		"Frame",
		"ImageLabel",
		"TextLabel",
	}
	for _, child in ipairs(gui:GetDescendants()) do
		if table.find(allowedClasses, child.ClassName) then
			child.InputBegan:Connect(onInputBegan)
		end
	end
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end;
task.spawn(C_14);

return G2L["1"], require;
