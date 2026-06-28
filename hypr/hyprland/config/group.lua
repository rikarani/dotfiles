local color = require("scheme.current")

hl.config({
  group = { -- see https://wiki.hypr.land/Configuring/Basics/Variables/#group
    col = {
      border_active = "rgba(" .. color.primary .. "e6)",
      border_inactive = "rgba(" .. color.onSurfaceVariant .. "11)",
      border_locked_active = "rgba(" .. color.primary .. "e6)",
      border_locked_inactive = "rgba(" .. color.onSurfaceVariant .. "11)",
    },
    groupbar = { -- see https://wiki.hypr.land/Configuring/Basics/Variables/#groupbar
      font_family = "JetBrains Mono NF",
      font_size = 15,
      gradients = true,
      gradient_round_only_edges = false,
      gradient_rounding = 5,
      height = 25,
      indicator_height = 0,
      gaps_in = 3,
      gaps_out = 3,
      text_color = "rgb(" .. color.onPrimary .. ")",
      col = {
        active = "rgba(" .. color.primary .. "d4)",
        inactive = "rgba(" .. color.outline .. "d4)",
        locked_active = "rgba(" .. color.primary .. "d4)",
        locked_inactive = "rgba(" .. color.secondary .. "d4)",
      }
    }
  }
})
