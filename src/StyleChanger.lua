-- Style Changer module

local module = {}

local function changeStyle(player, style)
    -- Implementation for changing player style
    print("Changing style for " .. player.Name .. " to " .. style)
end

function module.init(player)
    -- Initialize style changer for player
    print("Initializing style changer for " .. player.Name)
    
    -- Example: Change style when a key is pressed
    local function onInput(input, gameProcessed)
        if input.KeyCode == Enum.KeyCode.F1 then
            changeStyle(player, "Style1")
        elseif input.KeyCode == Enum.KeyCode.F2 then
            changeStyle(player, "Style2")
        end
    end
    
    player:GetMouse().KeyDown:Connect(onInput)
end

function module.cleanup(player)
    -- Clean up style changer for player
    print("Cleaning up style changer for " .. player.Name)
end

return module