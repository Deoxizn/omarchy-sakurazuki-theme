# Sakurazuki

Dark low-contrast Omarchy theme built around a sakura wallpaper — near-black plum base, muted rose accents, moonlit blue highlights.

Compatible with the current Omarchy Quattro release (Quickshell-based shell).

## Preview

![Sakurazuki preview](preview.png)

## Installation

```bash
omarchy-theme-install https://github.com/Deoxizn/omarchy-sakurazuki-theme.git
```

For the upstream original:

```bash
omarchy-theme-install https://github.com/ahmed-z0/omarchy-sakurazuki-theme.git
```

## What's Included

- Native Omarchy 4 / Quattro support through the semantic `colors.toml` palette, handcrafted `shell.toml` surfaces, and Lua-based Hyprland treatment in `hyprland.lua` + `hyprland.conf`.
- `backgrounds/sakura.png` — wallpaper (with `preview.png`, `preview-unlock.png`, `unlock.png` for the theme switcher)
- Standalone Neovim colorscheme plugin with `colors/sakurazuki.lua` and the `lua/sakurazuki/` module tree, so `:colorscheme sakurazuki` works directly from the active Omarchy theme directory (plus `neovim.lua` wiring for `aether.nvim` v3 via LazyVim)
- Companion theme files for Vencord (`vencord.theme.css`), Warp (`warp.yaml`), Chromium (`chromium.theme`), and Zed (`sakurazuki.zed.json`)
- Handcrafted overrides for `gtk.css`, `walker.css`, `waybar.css`, `swayosd.css`, `mako.ini`, `colors.css`, `cava`, `foot.ini`, and `sakurazuki.override.css` (Aether/GUI)
- Quattro generates routine application themes from `colors.toml`; generated boilerplate is kept minimal where custom styling is not needed
- `icons.theme` (Yaru-magenta) and `alacritty.toml` / `kitty.conf` / `ghostty.conf` / `foot.ini` terminal palettes (regenerated on install from `colors.toml` when installed as a git theme)

## Palette

Near-black plum base, muted rose accents, moonlit blue highlights.

| Role   | Color     |
|--------|-----------|
| bg     | `#14111A` |
| fg     | `#D8D0DC` |
| accent | `#B6849D` |
| muted  | `#6B5E72` |
| red    | `#8D5F74` |
| green  | `#6F7B8F` |
| yellow | `#9A84A2` |
| blue   | `#A87692` |
| magenta| `#947598` |
| cyan   | `#7E95C1` |

`hyprland_active_border` is a rose → moonlit gradient (`rgba(b6849dee) rgba(a1809acc) 45deg`), `hyprland_inactive_border` is a muted plum (`rgba(655763aa)`).

## Notes

- `neovim.lua` is wired to Omarchy's active theme directory when using the `sakurazuki` custom colorscheme; the bundled `aether.nvim` config also works via the generated theme.
- `shell.toml` fully describes Quickshell surfaces (bar, popups, notifications, launcher, menu, polkit, lock, image-picker, controls, spacing, typography). `shell.lock.toml` is no longer needed — the `[lock]` section lives in `shell.toml`.
- Hyprland borders are defined in both `hyprland.conf` (legacy) and `hyprland.lua` (current Lua config, required since Hyprland 0.5x+). The Lua version uses `{ colors = { "rgba(...)", ... }, angle = 45 }`.

## Template

Structure templated from [OldJobobo/omarchy-dune-theme](https://github.com/OldJobobo/omarchy-dune-theme) to meet Omarchy's newest theme requirements (colors.toml + shell.toml + hyprland.lua, Quattro generation, denied-file handling).

## Preview

![Preview 1](preview/preview-1.png)
![Preview 2](preview/preview-2.png)
