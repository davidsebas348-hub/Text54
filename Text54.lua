local Players = game:GetService("Players")
local player = Players.LocalPlayer

repeat task.wait() until player.Character
repeat task.wait() until player.Character:FindFirstChild("HumanoidRootPart")

-- Lista de coordenadas modificada
local stageCoordinates = {
    Vector3.new(-43, 98, -4),
    Vector3.new(-83, 131, 21),
    Vector3.new(-130, 103, -45),
    Vector3.new(-65, 75, -111),
    Vector3.new(-57, 17, -91),
    Vector3.new(-184, 17, -112),
    Vector3.new(-221, 17, -41),
    Vector3.new(-435, 51, -60),
    Vector3.new(-510, 51, 54),
    Vector3.new(-532, 119, 162),
    Vector3.new(-660, 205, 135),
    Vector3.new(-1061, 67, -184),
    Vector3.new(-1008, 114, -281),
    Vector3.new(-880, 129, -295),
    Vector3.new(-949, 199, -288),
    Vector3.new(-771, 238, -184),
    Vector3.new(-483, 223, -25),
    Vector3.new(-625, 205, 39),
    Vector3.new(-826, 205, -118),
    Vector3.new(-1656, -547, -651),
    Vector3.new(-1683, 953, -832),
    Vector3.new(-1783, 953, -837),
    Vector3.new(-3438, 953, -661),
    Vector3.new(-3538, 1076, -471) -- NUEVA ÚLTIMA COORDENADA
}

-- Teleport automático por todos los stages
local character = player.Character
local hrp = character:WaitForChild("HumanoidRootPart")

for i, position in ipairs(stageCoordinates) do
    hrp.CFrame = CFrame.new(position)
    task.wait(0.1) -- tiempo entre cada TP (puedes cambiarlo)
end
