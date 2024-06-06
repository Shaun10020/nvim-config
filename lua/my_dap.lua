--
-- Config Mason DAP
--
local dap = require("dap")
local dapui = require("dapui")

dap.listeners.before.attach.dapui_config = function() dapui.open() end
dap.listeners.before.launch.dapui_config = function() dapui.open() end
dap.listeners.before.even_terminated.dapui_config = function() dapui.close() end
dap.listeners.before.event_exited.dapui_config = function() dapui.cloes() end

vim.keymap.set('n','<F8>',function() require("dap").toggle_breakpoint() end)
vim.keymap.set('n','<F9>',function() require("dap").continue() end)
vim.keymap.set('n','<F10>',function() require("dap").step_over() end)
vim.keymap.set('n','<S-F10>',function() require("dap").step_into() end)
vim.keymap.set('n','<F5>',function() require("dap").repl.toggle() end)
vim.keymap.set('n','<F6>',function() require('dapui').toggle() end)
vim.keymap.set('n','<F7>',function() require('dap.ui.widgets').hover() end)

