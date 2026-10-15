local M = {}

M.apps = {
    -- Dashboard
    { workspace = 1, command = "kitty --title Dashboard-Fastfetch fastfetch" },
    { workspace = 1, command = "kitty --title Dashboard-Pipes pipes.sh" },
    { workspace = 1, command = "kitty --title Dashboard-Clock tty-clock -cs" },

    -- Gaming
    { workspace = 2, command = "steam" },
    { workspace = 2, command = "discord" },
    { workspace = 2, command = "firefox --new-window https://store.steampowered.com" },

    -- Social
    { workspace = 4, command = "firefox -P Social" },

    -- Workstation
    { workspace = 5, command = "codium" },
    { workspace = 5, command = "kitty" },
    { workspace = 5, command = "dolphin" },

    -- Downloads
    { workspace = 6, command = "dolphin" },

    -- Music
    { workspace = 7, command = "spotify" },
    { workspace = 7, command = "kitty --title Cava cava" },

    -- Research
    { workspace = 8, command = "firefox -P Research" },

    -- Status
    { workspace = 9, command = "kitty --title Btop btop" },
}

return M