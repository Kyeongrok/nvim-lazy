# nvim Lazy 설치

## Lazy
Lazy는 nvim의 모던 패키지 매니저 입니다.
[Lazy공식 페이지](https://github.com/folke/lazy.nvim)

### 경로
Linux: ~/.config/nvim  
Windows: ~/AppData/Local/nvim

위 경로에 clone 하시면 됩니다.

init.lua
```lua
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

require("lazy").setup({
    "tpope/vim-fugitive"
})
```
