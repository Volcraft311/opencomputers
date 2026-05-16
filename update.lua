if fs.exists(args[1] .. ".lua") then
    fs.delete(args[1] .. ".lua")
end
print("Downloading " .. args[1] .. ".lua...")
shell.run("wget https://raw.githubusercontent.com/Volcraft311/opencomputers/main/" .. args[1] .. " " .. args[1])
print(args[1] .. "Updated successfully!")