require("gruvbox").setup({
    italic = false,
    overrides = {
        SignColumn = {bg = "#1d2021"},
        GruvboxRedSign = { bg = "#cc241d"},
        GruvboxGreenSign = { bg = "#98971a"},
        GruvboxYellowSign = { bg = "#d79921"},
        GruvboxBlueSign = { bg = "#458588"},
        GruvboxPurpleSign = { bg = "#b16286"},
        GruvboxAquaSign = { bg = "#689d6a"},
 
    }
})

vim.o.background = "dark" 
vim.o.termguicolors = true
vim.cmd([[colorscheme gruvbox]])
vim.api.nvim_set_hl(0, "Normal", {bg="#1d2021"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg="#1c1c1c"})
vim.api.nvim_set_hl(0, "FloatBorder", {bg="#1c1c1c"})
vim.api.nvim_set_hl(0, "ColorColumn", {bg="#1c1c1c"})

