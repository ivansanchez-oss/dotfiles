local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.api.nvim_set_hl(0, "TelescopePromptBorder", {bg="#282828"})
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", {bg="#282828"})
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", {bg="#282828"})
