-- 
-- Config toggleterm
--
require("toggleterm").setup({
})
vim.keymap.set('n','<leader>tt',function() vim.cmd("ToggleTerm") end)
vim.keymap.set('t','<A-a>',function() vim.cmd("ToggleTerm") end)
