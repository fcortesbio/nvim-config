local M = {}

M.setup = function()
  local dap = require('dap')
  local dapui = require('dapui')
  
  -- Initialize UI
  dapui.setup()

  -- Auto-open/close UI
  dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
  dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
  dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end

  -- Keybindings
  vim.keymap.set('n', '<F5>', dap.continue)
  vim.keymap.set('n', '<F10>', dap.step_over)
  vim.keymap.set('n', '<F11>', dap.step_into)
  vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)
end

return M
