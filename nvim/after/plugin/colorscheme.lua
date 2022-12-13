require("gruvbox").setup({
    italic = false,
    overrides = {
        SignColumn = {bg = "#282828"},
        GruvboxRedSign = { bg = "#282828"},
        GruvboxGreenSign = { bg = "#282828"},
        GruvboxYellowSign = { bg = "#282828"},
        GruvboxBlueSign = { bg = "#282828"},
        GruvboxPurpleSign = { bg = "#282828"},
        GruvboxAquaSign = { bg = "#282828"},
 
    }
})

vim.o.background = "dark" 
vim.o.termguicolors = true
vim.cmd([[colorscheme gruvbox]])
