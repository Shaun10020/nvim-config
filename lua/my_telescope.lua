--
-- setup telecscope
--
local builtin = require("telescope.builtin")
vim.keymap.set('n','<leader>ff',builtin.find_files,{})
vim.keymap.set('n','<leader>fgf',builtin.git_files,{})
vim.keymap.set('n','<leader>fgc',builtin.git_commits,{})
vim.keymap.set('n','<leader>fgb',builtin.git_branches,{})
vim.keymap.set('n','<leader>fc',builtin.commands,{})
vim.keymap.set('n','<leader>fr',builtin.registers,{})
vim.keymap.set('n','<leader>fk',builtin.keymaps,{})
vim.keymap.set('n','<leader>ft',builtin.treesitter,{})
