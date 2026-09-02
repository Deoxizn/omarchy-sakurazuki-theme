local M = {}

local defaults = {
	accent = "#B6849D",
	cursor = "#D8D0DC",
	foreground = "#D8D0DC",
	background = "#14111A",
	selection_foreground = "#D8D0DC",
	selection_background = "#2A2432",
	color0 = "#14111A",
	color1 = "#8D5F74",
	color2 = "#6F7B8F",
	color3 = "#9A84A2",
	color4 = "#A87692",
	color5 = "#947598",
	color6 = "#7E95C1",
	color7 = "#E7DFE9",
	color8 = "#6B5E72",
	color9 = "#B57A92",
	color10 = "#8791AE",
	color11 = "#BEA2C7",
	color12 = "#C994B3",
	color13 = "#C3A5CA",
	color14 = "#94ABD1",
	color15 = "#D8D0DC",
}

local function dirname(path)
	return path:match("^(.*)/[^/]+$")
end

local function repo_root()
	local source = debug.getinfo(1, "S").source:sub(2)
	return dirname(dirname(dirname(source)))
end

local function read_colors_toml()
	local path = repo_root() .. "/colors.toml"
	local fd = io.open(path, "r")
	if not fd then
		return {}
	end

	local raw = {}
	for line in fd:lines() do
		local key, value = line:match('^([%w_]+)%s*=%s*"(#%x+)"')
		if key and value then
			raw[key] = value
		end
	end
	fd:close()
	return raw
end

function M.raw()
	return vim.tbl_extend("force", defaults, read_colors_toml())
end

function M.semantic(opts)
	opts = opts or {}
	local raw = M.raw()
	local line_bg = raw.selection_background == raw.color8 and "#2a2432" or raw.selection_background

	local palette = {
		bg = opts.transparent and "NONE" or raw.background,
		bg_dark = raw.color0,
		bg_alt = line_bg,
		bg_highlight = line_bg,
		bg_visual = raw.selection_background,
		bg_status = raw.color0,
		bg_float = opts.transparent and "NONE" or raw.color0,
		bg_popup = opts.transparent and "NONE" or raw.color0,
		fg = raw.foreground,
		fg_bright = raw.color15,
		fg_muted = raw.color6,
		fg_subtle = raw.color8,
		comment = raw.color8,
		comment_alt = raw.color6,
		border = raw.color8,
		border_bright = raw.color6,
		accent = raw.accent,
		accent_alt = raw.color3,
		red = raw.color1,
		red_dim = raw.color9,
		orange = raw.color6,
		yellow = raw.color11,
		green = raw.color2,
		green_dim = raw.color10,
		blue = raw.color5,
		blue_alt = raw.color13,
		magenta = raw.color6,
		purple = raw.color5,
		cyan = raw.color5,
		cyan_dim = raw.color13,
		selection_fg = raw.selection_foreground,
		selection_bg = raw.selection_background,
		cursor = raw.cursor,
	}

	palette.none = "NONE"
	palette.raw = raw
	return palette
end

return M
