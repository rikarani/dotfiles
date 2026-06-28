hl.config({
  input = { -- see https://wiki.hypr.land/Configuring/Basics/Variables/#input
    kb_layout = "us",
    numlock_by_default = false,
    repeat_rate = 25,
    repeat_delay = 600,
    focus_on_close = 1,
    follow_mouse = 1,
    sensitivity = 0,
    touchpad = { -- see https://wiki.hypr.land/Configuring/Basics/Variables/#touchpad
      natural_scroll = true,
      disable_while_typing = true,
      scroll_factor = 0.3
    }
  },
  binds = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#binds
    scroll_event_delay = 0
  },
  cursor = { -- see https://wiki.hypr.land/Configuring/Basics/Variables/#cursor
    hotspot_padding = 1
  }
})
