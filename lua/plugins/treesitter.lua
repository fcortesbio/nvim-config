return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function() 
    -- We call the main module's setup, NOT .configs
    require("nvim-treesitter").setup({
      ensure_installed = { 
          "rust", 
          "lua", 
          "vim", 
          "vimdoc", 
          "query", 
          "javascript", 
          "typescript",
          "python", 
          "java",
          "cpp",
          "c"
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })
  end,
}
