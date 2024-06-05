-- Use the color scheme tokyonight
vim.cmd.colorscheme "tokyonight"
require('lualine').setup({
  option = {
    icons_enabled = true,
    theme = 'tokyonight',
  },
})
require("ibl").setup()

