vim.cmd("set expandtab") 
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=3")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Lazy configuration
require("config.lazy")
