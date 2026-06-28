local color = require("scheme.current")

hl.config({
  general = { -- see https://wiki.hypr.land/Configuring/Basics/Variables/#general
    layout = "dwindle",
    allow_tearing = false,
    resize_on_border = true,
    gaps_workspaces = 20,
    gaps_in = 10,
    gaps_out = 15,
    border_size = 3,
    col = {
      active_border = "rgba(" .. color.primary .. "e6)",
      inactive_border = "rgba(" .. color.onSurfaceVariant .. "11)",
    }
  },
  dwindle = { -- see https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/
    preserve_split = true,
    smart_split = false,
    smart_resizing = true
  },
  scrolling = { -- see https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
    fullscreen_on_one_column = true,
    focus_fit_method = 1,
    column_width = 0.5,
    follow_focus = true,
    follow_min_visible = 0.0,
    explicit_column_widths = "0.35, 0.5, 0.65, 1.0",
  }
})
