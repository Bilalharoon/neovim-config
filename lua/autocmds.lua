
local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = {"python", "javascript", "cpp", "rust", "csharp", "text", "markdown", "rtf", "go", "lua"},
  command = "setlocal relativenumber",
})


