local mainMod = require("variables.variables").mainMod

hl.bind(mainMod .. " + Escape", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only
