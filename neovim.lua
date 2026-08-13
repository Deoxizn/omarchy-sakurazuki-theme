return {
    {
        "bjarneo/aether.nvim",
        branch = "v3",
        name = "aether",
        priority = 1000,
        opts = {
            colors = {
                bg = "#14111A",
                dark_bg = "#100D16",
                darker_bg = "#0B0911",
                lighter_bg = "#43384C",

                fg = "#D8D0DC",
                dark_fg = "#6B5E72",
                light_fg = "#E7DFE9",
                bright_fg = "#E7DFE9",
                muted = "#6B5E72",

                red = "#8D5F74",
                yellow = "#9A84A2",
                orange = "#B57A92",
                green = "#6F7B8F",
                cyan = "#7E95C1",
                blue = "#A87692",
                magenta = "#947598",
                brown = "#BEA2C7",

                bright_red = "#B57A92",
                bright_yellow = "#BEA2C7",
                bright_green = "#8791AE",
                bright_cyan = "#94ABD1",
                bright_blue = "#C994B3",
                bright_magenta = "#C3A5CA",

                accent = "#B6849D",
                cursor = "#E7DFE9",
                foreground = "#D8D0DC",
                background = "#14111A",
                selection = "#2A2432",
                selection_foreground = "#D8D0DC",
                selection_background = "#2A2432",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
