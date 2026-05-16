if fs.exists(arg[1] .. ".lua") then
    fs.delete(arg[1] .. ".lua")
end
print("Downloading " .. arg[1] .. ".lua...")
shell.run("wget https://raw.githubusercontent.com/Volcraft311/opencomputers/main/" .. arg[1] .. " " .. arg[1])
print(arg[1] .. "Updated successfully!")