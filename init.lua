local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Leader
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

-- Spaces & Tabs     
vim.opt.tabstop = 4       -- number of visual spaces per TAB    
vim.opt.softtabstop = 4   -- number of spaces in tab when editing    
vim.opt.shiftwidth = 4    -- number of spaces to use for autoindent      
vim.opt.expandtab = true  -- tabs are space    
vim.opt.autoindent = true                                                                                                               
vim.opt.copyindent = true -- copy indent from the previous line                               
vim.opt.termguicolors = true

require("lazy").setup("plugins")
