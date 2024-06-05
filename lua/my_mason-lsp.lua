--
-- Config Mason and Mason LSP config
--
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
vim.keymap.set('n','<leader>mm',function() vim.cmd("Mason") end)
require('mason-lspconfig').setup({})
require('mason-lspconfig').setup_handlers({
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
})

