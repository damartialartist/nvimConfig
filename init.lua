vim.g.mapleader = " " 
vim.opt.relativenumber = true
vim.opt.number = true

vim.g.nu = true
vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
-- Disable virtual_text since it's redundant due to lsp_lines.
vim.diagnostic.config({
  virtual_text = false,
})
vim.diagnostic.config({ virtual_lines = true })
local opts = {noremap = true, silent = true}






-- Require Stuff
require('packer_plugins')
