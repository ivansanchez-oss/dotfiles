-- highlight matches with last search pattern
vim.opt.hlsearch = true
-- ignore case in search patterns
vim.opt.ignorecase = true
-- use spaces when <Tab> is inserted
vim.opt.expandtab = true
-- clear highlight from last search pattern
vim.keymap.set('n','<leader>h',':nohlsearch<CR>')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.relativenumber = false
vim.opt.tabstop = 2
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 0
vim.opt.smartindent = true
vim.opt.wrap = false

