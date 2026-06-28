-- Kill / Restart Shell
hl.bind("SUPER + r", hl.dsp.exec_cmd("qs -c caelestia kill; sleep .1; caelestia shell -d"), { release = true })

-- Caelestia
hl.bind("SUPER + c", hl.dsp.global("caelestia:clearNotifs"), { locked = true })
hl.bind("SUPER + SUPER_L", hl.dsp.global("caelestia:launcher"), { release = true })
hl.bind("SUPER + l", hl.dsp.global("caelestia:lock"))
hl.bind("CTRL + ALT + Delete", hl.dsp.global("caelestia:session"))

-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.global("caelestia:brightnessUp"), { locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.global("caelestia:brightnessDown"), { locked = true })

-- Volume
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ 0; wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ 0; wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })

-- Media
hl.bind("Prior", hl.dsp.global("caelestia:mediaPrev"), { locked = true })
hl.bind("SUPER + k", hl.dsp.global("caelestia:mediaToggle"), { locked = true })
hl.bind("Next", hl.dsp.global("caelestia:mediaNext"), { locked = true })

-- Workspace
for i = 1, 10 do
  local ws = i % 10
  hl.bind("SUPER + " .. ws, hl.dsp.focus({ workspace = ws }))
  hl.bind("SUPER + SHIFT + " .. ws, hl.dsp.window.move({ workspace = ws }))
end

-- Window
hl.bind("SUPER + f", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))

hl.bind("SUPER + Up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + Down", hl.dsp.focus({ direction = "down" }))
hl.bind("SUPER + Left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + Right", hl.dsp.focus({ direction = "right" }))

hl.bind("SUPER + SHIFT + Up", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + Down", hl.dsp.window.move({ direction = "down" }))
hl.bind("SUPER + SHIFT + Left", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + Right", hl.dsp.window.move({ direction = "right" }))

-- Special Workspaces

-- Applications
hl.bind("SUPER + q", hl.dsp.window.close())
hl.bind("SUPER + Return", hl.dsp.exec_cmd("foot"))
hl.bind("SUPER + b", hl.dsp.exec_cmd("brave"))
hl.bind("SUPER + d", hl.dsp.exec_cmd("discord"))
hl.bind("SUPER + e", hl.dsp.exec_cmd("nautilus"))
hl.bind("SUPER + z", hl.dsp.exec_cmd("zeditor"))

-- Utilities
hl.bind("Print", hl.dsp.exec_cmd("caelestia screenshot"), { locked = true })           -- full screen screenshot > clipboard
hl.bind("SUPER + Print", hl.dsp.global("caelestia:screenshotClip"), { locked = true }) -- rectangle screenshot > clipboard
hl.bind("SUPER + v", hl.dsp.exec_cmd("pkill fuzzel || caelestia clipboard"))           -- open clipboard
hl.bind("SUPER + ALT + v", hl.dsp.exec_cmd("pkill fuzzel || caelestia clipboard -d"))  -- delete from clipboard
hl.bind("SUPER + period", hl.dsp.exec_cmd("pkill fuzzel || caelestia emoji -p"))       -- emoji
