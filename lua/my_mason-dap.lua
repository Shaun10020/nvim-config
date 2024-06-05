--
-- Config Mason DAP
--
require ('mason-nvim-dap').setup({
    ensure_installed = {'python', 'jq'},
    handlers = {}, -- sets up dap in the predefined manner
})

