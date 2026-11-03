-- Main script for high-tech school fight

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

-- Include other scripts
local styleChanger = require(script.StyleChanger)
local compoundV = require(script.CompoundV)
local autoFarm = require(script.AutoFarm)
local noclip = require(script.Noclip)

-- Main function
local function onPlayerAdded(player)
    -- Initialize features for each player
    styleChanger.init(player)
    compoundV.init(player)
    autoFarm.init(player)
    noclip.init(player)
end

-- Connect player added event
Players.PlayerAdded:Connect(onPlayerAdded)

-- Handle player removal
Players.PlayerRemoving:Connect(function(player)
    -- Clean up features for each player
    styleChanger.cleanup(player)
    compoundV.cleanup(player)
    autoFarm.cleanup(player)
    noclip.cleanup(player)
end)