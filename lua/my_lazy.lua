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

        { "folke/which-key.nvim", event = "VeryLazy", init = function() vim.o.timeout = true vim.o.timeoutlen=300 end, opts = {},},

        { 'nvim-telescope/telescope.nvim', tag = '0.1.6',dependencies = { 'nvim-lua/plenary.nvim'}},

        { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

        { "stevearc/oil.nvim" },

        { 'chrisbra/csv.vim' },

		{ 'nvim-lualine/lualine.nvim',dependencies = { 'nvim-tree/nvim-web-devicons' } },

		{ 'petertriho/cmp-git' },

        { 'ThePrimeagen/harpoon' },

        { 'mhinz/vim-startify' },

        { 'windwp/nvim-autopairs', event = "InsertEnter" , config = true},

        { 'lewis6991/gitsigns.nvim' },

        { 'tpope/vim-fugitive'},

        {'akinsho/toggleterm.nvim', version = "*", config = true},

        {'lukas-reineke/indent-blankline.nvim'},

        { "folke/noice.nvim", event = "VeryLazy",opts = {}, dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify",}},

		{ "L3MON4D3/LuaSnip", version = "v2.*",  build = "make install_jsregexp"},
		
		{
		  "folke/trouble.nvim",
		  opts = {}, -- for default options, refer to the configuration section for custom setup.
		  cmd = "Trouble",
		  keys = {
			{
			  "<leader>xx",
			  "<cmd>Trouble diagnostics toggle<cr>",
			  desc = "Diagnostics (Trouble)",
			},
			{
			  "<leader>xX",
			  "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			  desc = "Buffer Diagnostics (Trouble)",
			},
			{
			  "<leader>xs",
			  "<cmd>Trouble symbols toggle focus=false<cr>",
			  desc = "Symbols (Trouble)",
			},
			{
			  "<leader>xl",
			  "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
			  desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
			  "<leader>xL",
			  "<cmd>Trouble loclist toggle<cr>",
			  desc = "Location List (Trouble)",
			},
			{
			  "<leader>xQ",
			  "<cmd>Trouble qflist toggle<cr>",
			  desc = "Quickfix List (Trouble)",
			},
		  },
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
		{ "jay-babu/mason-nvim-dap.nvim"},
		{ "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
}
local opts = {}
require("lazy").setup(plugins, opts)
