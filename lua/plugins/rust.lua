return {
  'mrcjkb/rustaceanvim',
  -- ... other config
  config = function()
    vim.g.rustaceanvim = {
      server = {
        on_attach = require("config.lsp").on_attach, -- Unified!
      },
    }
  end
}
