modem = peripheral.wrap("top")
modem.open(22)

while true do

    local event = os.pullEvent()
    if event == "modem_message" then
        redstone.setAnalogOutput("back", 15)
        sleep(0.1)
        redstone.setAnalogOutput("back", 0)
        print("door toggled")
    end

end
