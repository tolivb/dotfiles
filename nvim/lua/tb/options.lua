vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Setting options ]]
-- Set highlight on search
vim.o.hlsearch = false
vim.o.colorcolumn = "80,140"

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.swapfile = false

-- Configure Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.smartindent = true

-- vim.opt.list = true
-- Set Visible Characters
vim.opt.listchars = {
	eol = '⤶',
	space = '.',
	tab = '  >',
	trail = '-',
	extends = '>',
	precedes = '<',
}

vim.opt.wrap = false

-- Enable mouse mode
vim.o.mouse = ''

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 150
vim.o.timeoutlen = 200

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true

vim.o.splitright = true
vim.o.splitbelow = true
