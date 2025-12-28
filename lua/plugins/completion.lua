return {
  'saghen/blink.cmp',
  version = '*',
  opts = {
    -- Changed from 'default' to 'super-tab'
    keymap = { preset = 'super-tab' },

    completion = {
      -- This ensures the first item is always highlighted/selected
      list = { selection = { preselect = true, auto_insert = true } },
      
      -- Displays a preview of the completion in grey text
      ghost_text = { enabled = true },
    },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    
    signature = { enabled = true }
  },
}
