
local RunService = game:GetService("RunService")
RunService.Heartbeat:Connect(function()
    pcall(function()
        for i,v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                local hrp = v.Character.HumanoidRootPart
                hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)   
                hrp.HipHeight = 1.85
            end
        end
    end)
end)


local CPlayer = Aiming.Selected
local hrp = CPlayer.Character.HumanoidRootPart
                hrp.Velocity = Vector3.new(0, 0, hrp.Velocity.Y, 0)    
                hrp.AssemblyLinearVelocity = Vector3.new(0, 0, hrp.Velocity.Y, 0)


