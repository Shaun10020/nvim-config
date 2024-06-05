--
-- Config nvim-tree
--
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
    ignore = false,
  },
})
vim.keymap.set('n','<leader>ee',function() vim.cmd("NvimTreeToggle") end)
vim.keymap.set('n','<leader>ef',function() vim.cmd("NvimTreeFocus") end)
