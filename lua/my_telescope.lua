--
-- setup telecscope
--
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
local builtin = require("telescope.builtin")
vim.keymap.set('n','<leader>ff',builtin.find_files,{})
vim.keymap.set('n','<leader>fgf',builtin.git_files,{})
vim.keymap.set('n','<leader>fgc',builtin.git_commits,{})
vim.keymap.set('n','<leader>fgb',builtin.git_branches,{})
vim.keymap.set('n','<leader>fgs',builtin.git_status,{})
vim.keymap.set('n','<leader>fgh',builtin.git_stash,{})
vim.keymap.set('n','<leader>fc',builtin.commands,{})
vim.keymap.set('n','<leader>fr',builtin.registers,{})
vim.keymap.set('n','<leader>fk',builtin.keymaps,{})
vim.keymap.set('n','<leader>ft',builtin.treesitter,{})
vim.keymap.set('n','<leader>fb',builtin.buffers,{})
vim.keymap.set('n','<leader>fn',function() vim.cmd("Noice telescope") end,{})

