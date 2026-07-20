require("nvchad.configs.lspconfig").defaults()

print("hello from lspconfig")
local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "lua_ls", "pyright", "gopls"} -- Add your LSP here

local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
  
  -- Enable the configured LSP
  vim.lsp.enable(lsp)
end

-- read :h vim.lsp.config for changing options of lsp servers 
