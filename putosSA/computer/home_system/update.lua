if fs.exists("home.lua") then
    fs.delete("home.lua")
end
shell.run("wget", "https://raw.githubusercontent.com/Kolterdyx/computercraft/master/putosSA/computer/home_system/home.lua")
if not fs.exists("table_saver.lua") then
    shell.run("wget", "https://raw.githubusercontent.com/Kolterdyx/computercraft/master/putosSA/computer/home_system/table_saver.lua")
end
if fs.exists("startup.lua") then
    fs.delete("startup.lua")
end
shell.run("wget", "https://raw.githubusercontent.com/Kolterdyx/computercraft/master/putosSA/computer/home_system/startup.lua")


os.reboot()
