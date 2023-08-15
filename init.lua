-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
local opt = vim.opt

opt.wrap = false

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

-- Numbers
opt.relativenumber = true
opt.numberwidth = 3

-- lua files should have a 2 space indent
vim.cmd [[
  augroup LuaIndent
    autocmd!
    autocmd FileType lua setlocal shiftwidth=2 tabstop=2 softtabstop=2
  augroup END
]]
