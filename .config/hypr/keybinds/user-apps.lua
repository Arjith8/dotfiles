local variables = require("variables.variables")
local user_apps = variables.user_apps
local mainMod = variables.mainMod

hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(user_apps.terminal))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(user_apps.browser))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(user_apps.fileManager))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(user_apps.menu))
