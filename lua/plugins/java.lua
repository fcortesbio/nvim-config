return {
  "mfussenegger/nvim-jdtls",
  ft = { "java" },
  config = function()
    local config = {
      cmd = { 'jdtls' },
      root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
      on_attach = require("config.lsp").on_attach,
    }
    require('jdtls').start_or_attach(config)
  end
}
