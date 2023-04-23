require("gruvbox").setup({
    italic = false,
    overrides = {
        SignColumn = {bg = "#1c1c1c"},
        GruvboxRedSign = { bg = "#1c1c1c"},
        GruvboxGreenSign = { bg = "#1c1c1c"},
        GruvboxYellowSign = { bg = "#1c1c1c"},
        GruvboxBlueSign = { bg = "#1c1c1c"},
        GruvboxPurpleSign = { bg = "#1c1c1c"},
        GruvboxAquaSign = { bg = "#1c1c1c"},
 
    }
})

vim.o.background = "dark" 
vim.o.termguicolors = true
vim.cmd([[colorscheme gruvbox]])
vim.api.nvim_set_hl(0, "Normal", {bg="#1d2021"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg="#1c1c1c"})
vim.api.nvim_set_hl(0, "FloatBorder", {bg="#1c1c1c"})
vim.api.nvim_set_hl(0, "ColorColumn", {bg="#1c1c1c"})

