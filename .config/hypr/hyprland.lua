-- Window rules (Hyprland 0.55+ uses Lua for window rules)
-- This file is auto-loaded alongside hyprland.conf

-- User custom rules (from windowrules/default.conf)
hl.window_rule({ match = { title = "^(pavucontrol)$" }, float = true })
hl.window_rule({ match = { title = "^(blueman-manager)$" }, float = true })
hl.window_rule({ match = { title = "^(nm-connection-editor)$" }, float = true })
hl.window_rule({ match = { title = "^(qalculate-gtk)$" }, float = true })
hl.window_rule({ match = { title = "^(Picture-in-Picture)$" }, float = true, pin = true, move = "monitor_w*0.695 monitor_h*0.04" })
hl.window_rule({ match = { class = "[window]" }, idle_inhibit = "fullscreen" })

-- ML4W rules (from ml4w.conf)
hl.layer_rule({ match = { namespace = "swaync-control-center" }, blur = true, ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "swaync-control-center" }, ignore_alpha = 0.5 })
hl.layer_rule({ match = { namespace = "swaync-notification-window" }, blur = true, ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "swaync-notification-window" }, ignore_alpha = 0.5 })

hl.window_rule({ match = { class = "(.*org.pulseaudio.pavucontrol.*)" }, float = true, size = { 700, 600 }, center = true, pin = true })

hl.window_rule({ match = { title = "(ChatGPT.*)" }, float = true })
hl.window_rule({ match = { title = "(.*chat.openai.com.*)" }, float = true })
hl.window_rule({ match = { title = "(.*chat.openai.com.*)" }, size = { 500, "monitor_h*0.5" } })
hl.window_rule({ match = { title = "(.*chat.openai.com.*)" }, move = { 20, 70 } })

hl.window_rule({ match = { class = "(.*waypaper.*)" }, float = true, size = { 900, 700 }, center = true, pin = true })

hl.window_rule({ match = { class = "(com.ml4w.calendar)" }, float = true, move = "monitor_w-window_w-16 66", pin = true, size = { 400, 400 } })
hl.window_rule({ match = { class = "(com.ml4w.sidebar)" }, float = true, move = "monitor_w-window_w-16 66", pin = true, size = { 400, 740 } })
hl.window_rule({ match = { class = "(com.ml4w.welcome)" }, float = true, size = { 700, 600 }, center = true, pin = true })
hl.window_rule({ match = { class = "(com.ml4w.settings)" }, float = true, size = { 800, 600 }, move = "monitor_w*0.1 monitor_h*0.2" })

hl.window_rule({ match = { class = "(blueman-manager)" }, float = true, size = { 800, 600 }, center = true })

hl.window_rule({ match = { class = "(nwg-look)" }, float = true, size = { 700, 600 }, move = "monitor_w*0.1 monitor_h*0.2", pin = true })
hl.window_rule({ match = { class = "(nwg-displays)" }, float = true, size = { 900, 600 }, move = "monitor_w*0.1 monitor_h*0.2", pin = true })

hl.window_rule({ match = { class = "(io.missioncenter.MissionCenter)" }, float = true, pin = true, center = true, size = { 900, 600 } })
hl.window_rule({ match = { class = "(missioncenter)", title = "^(Preferences)$" }, float = true, pin = true, center = true })

hl.window_rule({ match = { class = "(org.gnome.Calculator)" }, float = true, size = { 700, 600 }, center = true })

hl.window_rule({ match = { class = "(it.mijorus.smile)" }, float = true, pin = true, move = "monitor_w-window_w-40 90" })

hl.window_rule({ match = { class = "(hyprland-share-picker)" }, float = true, pin = true, center = true, size = { 600, 400 } })

hl.window_rule({ match = { class = "(dotfiles-floating)" }, float = true, size = { 1000, 700 }, center = true })
hl.window_rule({ match = { class = "(ml4w.dotfiles.floating)" }, float = true, size = { 1000, 700 }, center = true, pin = true })
