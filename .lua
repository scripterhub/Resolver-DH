
local RunService = game:GetService("RunService")
RunService.Heartbeat:Connect(function()
    pcall(function()
        for i,v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                local hrp = v.Character.HumanoidRootPart
                local hrp2 = v.Character.Humanoid.HipHeight
                hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)   
                hrp2 = 1.85
            end
        end
    end)
end)


local CPlayer = Aiming.Selected
local hrp = CPlayer.Character.HumanoidRootPart
                hrp.Velocity = Vector3.new(0, 0, hrp.Velocity.Y, 0)    
                hrp.AssemblyLinearVelocity = Vector3.new(0, 0, hrp.Velocity.Y, 0)


