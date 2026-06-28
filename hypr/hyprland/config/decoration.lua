local color = require("scheme.current")

hl.config({
  decoration = { -- see https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
    rounding = 10,
    blur = { -- see https://wiki.hypr.land/Configuring/Basics/Variables/#blur
      enabled = true,
      xray = false,
      special = false,
      ignore_opacity = true,
      new_optimizations = true,
      popups = true,
      input_methods = true,
      size = 8,
      passes = 2
    },
    shadow = { -- see https://wiki.hypr.land/Configuring/Basics/Variables/#shadow
      enabled = true,
      range = 20,
      render_power = 3,
      color = "rgba(" .. color.inversePrimary.. "10)"
    }
  }
})
