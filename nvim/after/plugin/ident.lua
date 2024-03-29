vim.api.nvim_set_hl(0, "IndentBlanklineIndent", { fg = "#666666", bg = "#1c1c1c" })
vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = "#C6C6C6", bg = "#1c1c1c" })

require("ibl").setup {
    scope = { enabled = false },
}
