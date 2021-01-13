print("Removing old home.lua")
shell.run("rm", "home.lua")
print("Updating home.lua")
shell.run("wget", "https://raw.githubusercontent.com/Kolterdyx/computercraft/master/putosSA/computer/home_system/home.lua")


print("Updating table_saver.lua")
shell.run("rm", "table_saver.lua")
print("Updating table_saver.lua")
shell.run("wget", "https://raw.githubusercontent.com/Kolterdyx/computercraft/master/putosSA/computer/home_system/table_saver.lua")

print("Removing old startup.lua")
shell.run("rm", "startup.lua")
print("Updating startup.lua")
shell.run("wget", "https://raw.githubusercontent.com/Kolterdyx/computercraft/master/putosSA/computer/home_system/startup.lua")

print("rebooting")
os.reboot()
