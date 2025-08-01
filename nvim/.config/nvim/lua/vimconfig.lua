vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undotree"
vim.opt.undofile = true

vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "no"
vim.opt.colorcolumn = "120"

vim.opt.updatetime = 50
vim.o.timeoutlen = 300

vim.opt.isfname:append("@-@")

vim.opt.softtabstop = 2     -- Number of spaces for a tab
vim.opt.tabstop = 2         -- Number of spaces for a tab
vim.opt.shiftwidth = 2      -- Number of spaces for indentation
vim.opt.expandtab = false   -- Use spaces instead of tabs
vim.opt.smartindent = false -- Smart indentation
vim.opt.wrap = false        -- Wrap around text to next line

vim.g.clipboard = ""
