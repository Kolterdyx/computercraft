monitor = peripheral.wrap("left")
modem = peripheral.wrap("top")
modem.open(23)
monitor.clear()

function screen(text, x, y)
    monitor.setCursorPos(x, y)
    monitor.clearLine()
    monitor.write(text)
end

function execute(cmd, args)   
    if cmd == "door" then
        modem.transmit(22, 23, "toggle")
        screen("Recieved command: " .. cmd, 1, 2)
        screen("Arguments:", 1, 3)
        for k,v in pairs(args) do
            screen("  "..args[k]
        end
    elseif cmd == "test" then
        screen("Recieved command " .. cmd, 1, 2)
        screen("Arguments: " .. sargs, 1, 3)
    end

end
-- recieve messages
function message()
    while true do
        local events = table.pack(os.pullEvent())
        if events[1] == "modem_message" then
            commandMain = events[5]
            command = commandMain[1]
            commandMain[1] = nil
            commandMain[0] = nil
            commandArgs = commandMain
            execute(command, commandArgs)
        end
    end
end


function main()
while true do
-- display the date and time
timeH = tostring(math.floor(os.time()))
timeM = math.floor((os.time() - math.floor(os.time()))*60)
if math.floor(os.time()) < 10 then
    timeH = "0" .. timeH
end
if timeM < 10 then
    timeM = "0" .. tostring(timeM)
end
tostring(timeM)
day = tostring(math.floor(os.day()))
monitor.setCursorPos(1, 1)
monitor.clearLine()
monitor.write("Day " .. day .. ", " .. timeH .. ":" .. timeM)
----

sleep(0.1)
end
end


parallel.waitForAll(main, message)
