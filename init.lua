vim.opt.number = true
vim.opt.tabstop = 4		-- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4 		-- Number of spaces to use for each step of (auto) indent
vim.opt.expandtab = true 	-- Convert tabs to spaces

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "html", "javascript", "css", "typescript" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end,
})

require("config.lazy")
