-- Script to display the stress info on the current create rotation network on a monitor
stress = peripheral.wrap("bottom")
monitor = peripheral.wrap("front")

-- startup function
term.clear()
print("hello :) what are you looking at??")
print("running stress display script v1.1")

local function displayStressInfo()
    monitor.clear()
    monitor.setTextScale(1)
    
    monitor.setCursorPos(1, 1)
    monitor.write("Current Stress:")
    monitor.setCursorPos(1, 2)
    monitor.write("  " .. current .. "su")
    
    monitor.setCursorPos(1, 4)
    monitor.write("Total Stress:")
    monitor.setCursorPos(1, 5)
    monitor.write("  " .. total .. "su")
    
    monitor.setCursorPos(1, 7)
    monitor.write("Stress Percentage:")
    monitor.setCursorPos(1, 8)
    monitor.write("  " .. string.format("%.2f", stressPercent) .. "%")
end

while true do
    current = stress.getStress()
    total = stress.getStressCapacity()
    stressPercent = current / total * 100
    displayStressInfo()
    sleep(1)
end
