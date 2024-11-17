-- Set the side where the redstone signal will be sent
local redstoneSide = "back"

-- Function to pulse redstone
local function pulseRedstone()
    while true do
        redstone.setOutput(redstoneSide, true)
        sleep(0.5)
        redstone.setOutput(redstoneSide, false)
        sleep(0.5)
    end
end

-- Start pulsing redstone
pulseRedstone()