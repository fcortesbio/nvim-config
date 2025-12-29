return {
  "neovim/nvim-lspconfig",
  config = function()
    local shared = require("config.lsp")

    -- 1. JS/TS (Existing)
    vim.lsp.config('ts_ls', {
      cmd = { "typescript-language-server", "--stdio" },
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      root_markers = { "package.json", "tsconfig.json", ".git" },
      on_attach = shared.on_attach,
    })
    vim.lsp.enable('ts_ls')

    -- 2. Python (New)
    vim.lsp.config('pyright', {
      cmd = { "pyright-langserver", "--stdio" },
      filetypes = { "python" },
      root_markers = { "pyproject.toml", "setup.py", "requirements.txt", ".git" },
      on_attach = shared.on_attach,
    })
    vim.lsp.enable('pyright')

    -- 3. C++ (New)
    vim.lsp.config('clangd', {
      cmd = { "clangd" },
      filetypes = { "c", "cpp", "objc", "objcpp" },
      root_markers = { ".clangd", "compile_commands.json", "CMakeLists.txt", ".git" },
      on_attach = shared.on_attach,
    })
    vim.lsp.enable('clangd')
  end
}
