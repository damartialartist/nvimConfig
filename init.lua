vim.g.mapleader = " " 
vim.opt.relativenumber = true


vim.g.nu = true
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

local opts = {noremap = true, silent = true}






-- Require Stuff
require('packer_plugins')
