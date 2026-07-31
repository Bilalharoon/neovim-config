
local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = {"python", "javascript", "cpp", "rust", "csharp", "text", "markdown", "rtf", "go", "lua"},
  command = "setlocal relativenumber",
})


vim.api.nvim_create_autocmd("FileType", {
  pattern = "codecompanion",
  callback = function()
    vim.treesitter.start()
  end,
})



