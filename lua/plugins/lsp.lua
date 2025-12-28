return {
  "neovim/nvim-lspconfig",
  config = function()
    -- Shared keybindings for all non-Rust LSPs
    local on_attach = function(client, bufnr)
      local opts = { buffer = bufnr, silent = true }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    end

    -- NEVIM 0.11+ Way: Using the native config system
    -- This replaces the deprecated require('lspconfig').ts_ls.setup()
    vim.lsp.config('ts_ls', {
      cmd = { "typescript-language-server", "--stdio" },
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      root_markers = { "package.json", "tsconfig.json", ".git" },
      on_attach = on_attach,
    })

    -- Enable the config
    vim.lsp.enable('ts_ls')
    
  end
}
