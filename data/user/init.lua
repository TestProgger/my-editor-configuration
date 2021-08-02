-- put user settings here
-- this module will be loaded after everything else when the application starts

local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

-- light theme:
-- require "user.colors.github"

-- key binding:
-- keymap.add { ["ctrl+escape"] = "core:quit" }

config.theme_name = "cupertino" -- name of the theme
-- dynamically load a theme
keymap.add { ["alt+home"] = "theme:change" }
keymap.add { ["alt+pageup"] = "theme:prev" }
keymap.add { ["alt+pagedown"] = "theme:next" }
-- write current theme to file
keymap.add { ["alt+insert"] = "theme:write" }
