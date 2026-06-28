hl.on("hyprland.start", function()
  -- Keyring and Auth
  hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
  hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

  -- Clipboard History
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")

  -- Delete Trash after 30 days
  hl.exec_cmd("trash-empty 30")

  -- Cursor
  hl.exec_cmd("hyprctl setcursor sweet-cursors 24")
  hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'sweet-cursors'")
  hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 24")

  -- Desktop Environment
  hl.exec_cmd("brightnessctl s 2")
  hl.exec_cmd("caelestia shell -d")
end)
