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

-- install LSP
-- vim.cmd("MasonInstall pyright") -- python 
-- vim.cmd("MasonInstall angular-language-server") -- angular
-- vim.cmd("MasonInstall arduino-language-server") -- Arduino
-- vim.cmd("MasonInstall bash-language-server") -- Bash
-- vim.cmd("MasonInstall clangd") -- C & C++
-- vim.cmd("MasonInstall csharp-language-server") -- C#
-- vim.cmd("MasonInstall css-lsp") -- CSS
-- vim.cmd("MasonInstall dockerfile-language-server") -- Docker
-- vim.cmd("MasonInstall html-lsp") -- HTML
-- vim.cmd("MasonInstall json-lsp") -- JSON
-- vim.cmd("MasonInstall jdtls") -- Java
-- vim.cmd("MasonInstall eslint-lsp") -- Javascript
-- vim.cmd("MasonInstall lua-language-server") -- Lua
-- vim.cmd("MasonInstall texlab") -- LaTeX
-- vim.cmd("MasonInstall marksman") -- Markdown
-- vim.cmd("MasonInstall typescript-language-server") -- TypeScript

require('mason-lspconfig').setup({})
require('mason-lspconfig').setup_handlers({
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
})


