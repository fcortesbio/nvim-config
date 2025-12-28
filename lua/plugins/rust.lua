return {
  'mrcjkb/rustaceanvim',
  version = '^5',
  lazy = false,
  config = function()
    vim.g.rustaceanvim = {
      server = {
        -- Using the exact path we verified exists
        cmd = function()
          return { "/home/fcortesbio/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rust-analyzer" }
        end,
        on_attach = function(client, bufnr)
          print("LSP ATTACHED SUCCESSFULLY")
        end,
      },
    }
  end
}
