--
-- This is my personal vim config
--
-- optionally enable 24-bit colour
vim.opt.termguicolors = true
-- Use space characters instead of tabs
vim.cmd("set expandtab")
vim.cmd("set shiftwidth=4")
-- Set tab width to 2 spaces
vim.cmd("set tabstop=4")
-- Disable softtabstop, not sure what it does
vim.cmd("set softtabstop=4")
-- Turn on syntax highlighting
vim.cmd("syntax on")
-- Turn on line number and relative number
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.statuscolumn = "%s %l %r"
vim.opt.incsearch = true
-- Highlight cursor line horizontally 
vim.cmd("set cursorline")
-- Highlight cursor line vertically 
vim.cmd("set cursorcolumn")
-- Ignore capital letters during search
vim.cmd("set ignorecase")
-- set no highlight search
vim.cmd("set nohlsearch")
vim.cmd("set nobackup")
vim.cmd("set scrolloff=10")
vim.cmd("set nowrap")
vim.cmd("set incsearch")
vim.cmd("set smartcase")
vim.cmd("set showcmd")
vim.cmd("set showmode")
-- set vim leader
vim.g.mapleader = " "
vim.keymap.set('n','<C-d>','<C-d>zz')
vim.keymap.set('n','<C-u>','<C-u>zz')
vim.keymap.set('n','<C-f>','<C-f>zz')
vim.keymap.set('n','<C-b>','<C-b>zz')
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set('n','<leader>w','<C-w>')
vim.keymap.set('n','<leader><leader>',':')
vim.keymap.set('i','<A-a>','<Esc>')
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- set toggle paste mode
vim.keymap.set('n','<F3>',function() vim.cmd.set("paste!") end)
