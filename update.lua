if fs.exists(arg[1] .. ".lua") then
    fs.delete(arg[1] .. ".lua")
end

math.randomseed(os.time())
local cache_buster = math.random(1, 100000)

print("Downloading " .. arg[1] .. ".lua...")
shell.run("wget https://raw.githubusercontent.com/Volcraft311/opencomputers/main/" .. arg[1] .. "?nocache=" .. cache_buster .. arg[1] .. ".lua")
print(arg[1] .. "Updated successfully!")