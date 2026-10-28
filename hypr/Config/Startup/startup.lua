--local apps = require("Config/myprograms")

-- Função auxiliar para rodar comandos em background de forma limpa
local function exec(cmd)
    hl.exec(cmd)
end

hl.on("hyprland.start", function()
    -- ----------------------------------------------------
    -- SISTEMA & BARRA (Executados primeiro)
    -- ----------------------------------------------------
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("nm-applet")
end)