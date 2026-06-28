local function toggleCaelestiaSpecialWorkspace()
	hl.exec_cmd("caelestia toggle specialws")
end

hl.gesture({ fingers = 4, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "down", action = toggleCaelestiaSpecialWorkspace })
