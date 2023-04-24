vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>')

local opts = { actions = { open_file = { quit_on_open = true } } }
require('nvim-tree').setup(opts)
