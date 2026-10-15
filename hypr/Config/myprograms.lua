---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local M = {}

M.terminal    = "kitty"
M.fileManager = "dolphin"
M.menu        = "rofi"
M.browser   = "firefox"
M.editor    = "codium"
M.music     = "spotify"

M.discord   = "discord"
M.steam     = "steam"
M.btop      = "kitty --class btop_term -e btop"
M.cava      = "kitty --class cava_term -e cava"

M.dash_fetch = "kitty --class dash_fetch -e fastfetch"
M.dash_clock = "kitty --class dash_clock -e tty-clock -c -b -C 4"
M.dash_art   = "kitty --class dash_art -e cbonsai -p -i -l"
return M