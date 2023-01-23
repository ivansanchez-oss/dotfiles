-- highlight matches with last search pattern
vim.opt.hlsearch = true
-- ignore case in search patterns
vim.opt.ignorecase = true
-- use spaces when <Tab> is inserted
vim.opt.expandtab = true
-- clear highlight from last search pattern
vim.keymap.set('n','<leader>h',':nohlsearch<CR>')
-- print the line number in front of each line
vim.opt.nu = true

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.relativenumber = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 0
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.clipboard = 'unnamedplus'

vim.api.nvim_set_hl(0, "NormalFloat", {bg="#282828"})
vim.api.nvim_set_hl(0, "ColorColumn", {bg="#282828"})


local border = {
        { "╭", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╮", "FloatBorder" },
        { "│", "FloatBorder" },
        { "╯", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╰", "FloatBorder" },
        { "│", "FloatBorder" },
}

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

-- Set updatetime for CursorHold
-- 300ms of no cursor movement to trigger CursorHold
vim.opt.updatetime = 100

vim.api.nvim_create_autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = 'rounded',
      source = 'always',
      prefix = ' ',
      scope = 'cursor',
    }
    vim.diagnostic.open_float(nil, opts)
  end
})

vim.diagnostic.config({
  virtual_text = { severity = { min = vim.diagnostic.severity.WARN } },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },
  signs = true,
  update_in_insert = true,
  severity_sort = false,
})

-- have a fixed column for the diagnostics to appear in
-- this removes the jitter when warnings/errors flow in
vim.wo.signcolumn = "yes"

local format_sync_grp = vim.api.nvim_create_augroup("Format", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {"*.rs","*.html","*.py","*.js"},
  callback = function()
    vim.lsp.buf.format({ timeout_ms = 200 })
  end,
  group = format_sync_grp,
})

