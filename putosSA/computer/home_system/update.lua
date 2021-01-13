print("Updating home.lua")
if fs.exists("home.lua") then
    print("Removing old home.lua")
    fs.delete("home.lua")
end
shell.run("wget", "https://raw.githubusercontent.com/Kolterdyx/computercraft/master/putosSA/computer/home_system/home.lua")
print("Making sure table_saver.lua exists")
if not fs.exists("table_saver.lua") then
    shell.run("wget", "https://raw.githubusercontent.com/Kolterdyx/computercraft/master/putosSA/computer/home_system/table_saver.lua")
end
print("Updating startup.lua")
if fs.exists("startup.lua") then
    print("Removing old startup.lua")
    fs.delete("startup.lua")
end
shell.run("wget", "https://raw.githubusercontent.com/Kolterdyx/computercraft/master/putosSA/computer/home_system/startup.lua")

print("rebooting")
os.reboot()
