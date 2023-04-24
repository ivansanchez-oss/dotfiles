vim.api.nvim_set_hl(0, "IndentBlanklineIndent", { fg = "#666666", bg = "#1c1c1c" })
vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = "#C6C6C6", bg = "#1c1c1c" })

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    max_indent_increase = 1,
    show_trailing_blankline_indent = false,
    use_treesitter = true,
    char_highlight_list = {
        "IndentBlanklineIndent",
    }
}
