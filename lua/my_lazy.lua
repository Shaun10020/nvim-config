--
-- This installs lazy nvim
--
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


--
-- This runs lazy nvim
--
local plugins = {
        { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {},},
        { 'nvim-telescope/telescope.nvim', tag = '0.1.6',dependencies = { 'nvim-lua/plenary.nvim'}},
        { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
        { "stevearc/oil.nvim" },
        { 'chrisbra/csv.vim' },
	 	{ 'nvim-lualine/lualine.nvim',dependencies = { 'nvim-tree/nvim-web-devicons' } },
		{ 'petertriho/cmp-git' },
        { 'ThePrimeagen/harpoon' },
        { 'mhinz/vim-startify' },
        { 'lewis6991/gitsigns.nvim' },
        { 'tpope/vim-fugitive'},
		{ "kylechui/nvim-surround", version = "*", event = "VeryLazy", config = function() require("nvim-surround").setup({})end },
  	    {'akinsho/toggleterm.nvim', version = "*", config = true},
        {'lukas-reineke/indent-blankline.nvim'},
        { "folke/noice.nvim", event = "VeryLazy",opts = {},
			dependencies = {
    		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    		"MunifTanjim/nui.nvim",
    		-- OPTIONAL:
    		--   `nvim-notify` is only needed, if you want to use the notification view.
    		--   If not available, we use `mini` as the fallback
    		"rcarriga/nvim-notify",
    		}
		},


		-- Install LSP-zero
		{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
		{'neovim/nvim-lspconfig'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'hrsh7th/cmp-cmdline'},
		{'hrsh7th/nvim-cmp'},
		{'L3MON4D3/LuaSnip'},

		-- Install Mason 
		{"williamboman/mason.nvim"},
        {"williamboman/mason-lspconfig.nvim"},

    -- Install DAP
		{ 'mfussenegger/nvim-dap'},
		{ "jay-babu/mason-nvim-dap.nvim"}
}
local opts = {}
require("lazy").setup(plugins, opts)
