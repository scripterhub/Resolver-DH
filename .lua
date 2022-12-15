
local RunService = game:GetService("RunService")

RunService.Heartbeat:Connect(function()
    pcall(function()
        for i,v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                local hrp = v.Character.HumanoidRootPart
                hrp.AssemblyLinearVelocity = Vector3.new(0.1, 0, 0.1)   
            end
        end
    end)
end)

while true do
local CPlayer = Aiming.Selected
local hrp = CPlayer.Character.HumanoidRootPart
                hrp.Velocity = Vector3.new(0, 0, hrp.Velocity.Y, 0)    
                hrp.AssemblyLinearVelocity = Vector3.new(0, 0, hrp.Velocity.Y, 0)
end

getgenv().VelocityChanger = true
getgenv().Velocity = Vector3.new(1,0,1)


local Players     = game:GetService("Players")
local RunService  = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Character   = LocalPlayer.Character
local RootPart    = Character:FindFirstChild("HumanoidRootPart")

local Heartbeat, RStepped, Stepped = RunService.Heartbeat, RunService.RenderStepped, RunService.Stepped

LocalPlayer.CharacterAdded:Connect(function(NewCharacter)
   Character = NewCharacter
end)

local RVelocity, YVelocity = nil, 0.1

while true do
   if VelocityChanger then
       --// this a dumb check asnilsadsa
       if (not RootPart) or (not RootPart.Parent) or (not RootPart.Parent.Parent) then
           warn("weird ahh died")
           RootPart = Character:FindFirstChild("HumanoidRootPart")
       else
           RVelocity = RootPart.Velocity
   
           RootPart.Velocity = type(Velocity) == "vector" and Velocity or Velocity(RVelocity)
       
           RStepped:wait()
       
           RootPart.Velocity = RVelocity
       end
   end
   
   Heartbeat:wait()
end
