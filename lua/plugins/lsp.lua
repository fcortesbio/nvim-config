return {
  "neovim/nvim-lspconfig",
  config = function()
    local shared = require("config.lsp")

    -- JS/TS (Native 0.11 way)
    vim.lsp.config('ts_ls', {
      cmd = { "typescript-language-server", "--stdio" },
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      root_markers = { "package.json", "tsconfig.json", ".git" },
      on_attach = shared.on_attach, -- Use shared logic
    })
    vim.lsp.enable('ts_ls')
  end
}
