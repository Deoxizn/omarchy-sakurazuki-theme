-- Generated from hyprland.conf - Sakurazuki
-- Moonlit plum / muted rose

local activeBorderColor = {
  colors = { "rgba(b6849dee)", "rgba(c994b3ee)", "rgba(a1809acc)" },
  angle = 45,
}
local inactiveBorderColor = "rgba(655763aa)"

hl.config({
  general = {
    col = {
      active_border = activeBorderColor,
      inactive_border = inactiveBorderColor,
    },
    border_size = 3,
    gaps_in = 6,
    gaps_out = 12,
  },
  group = {
    col = {
      border_active = activeBorderColor,
    },
  },
  decoration = {
    rounding = 0,
    active_opacity = 1.0,
    inactive_opacity = 0.97,
    blur = {
      enabled = true,
      size = 3,
      passes = 2,
      noise = 0.18,
      special = false,
    },
    shadow = {
      enabled = true,
      range = 14,
      render_power = 3,
      color = "rgba(00000088)",
    },
  },
})

hl.curve("sakura", { type = "bezier", points = { { 0.35, 0 }, { 0.65, 1 } } })

hl.animation({
  leaf = "borderangle",
  enabled = true,
  speed = 28,
  bezier = "sakura",
  style = "once",
})
