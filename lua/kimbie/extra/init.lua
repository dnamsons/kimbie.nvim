package.path = "./lua/?/init.lua;./lua/?.lua"

local configModule = require("kimbie.config")

local function write(str, fileName)
  print("[write] extra/" .. fileName)
  local file = io.open("extras/" .. fileName, "w")
  file:write(str)
  file:close()
end

local extras = { kitty = "conf", alacritty = "yml" }
for extra, ext in pairs(extras) do
  local plugin = require("kimbie.extra." .. extra)
  write(plugin[extra](configModule.config), extra .. "_kimbie" .. "." .. ext)
end
