-- Script to display the stress info on the current create rotation network
stress = peripheral.wrap("bottom")
monitor = peripheral.wrap("front")

local function displayStressInfo()
    monitor.clear()
    monitor.setCursorPos(1, 1)
    monitor.write("Current Stress: " .. current .. "su")
    monitor.setCursorPos(1, 2)
    monitor.write("Total Stress: " .. total .. "su")
    monitor.setCursorPos(1, 3)
    monitor.write("Stress Percentage: " .. string.format("%.2f", stressPercent) .. "%")
end

while true do
    current = stress.getStress()
    total = stress.getStressCapacity()
    stressPercent = current / total * 100
    displayStressInfo()
    sleep(1)
