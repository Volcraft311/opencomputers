if fs.exists("miner.lua") then
    fs.delete("miner.lua")
end
print("Downloading miner.lua...")
shell.run("wget https://raw.githubusercontent.com/Volcraft311/opencomputers/main/miner.lua miner.lua")
print("Updated successfully!")