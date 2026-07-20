require("nvchad.configs.lspconfig").defaults()

print("hello from lspconfig")
-- local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "lua_ls", "pyright", "gopls"} -- Add your LSP here


vim.lsp.enable(servers)

-- to configure lsps further read :h vim.lsp.config

-- local nvlsp = require "nvchad.configs.lspconfig"
--
-- for _, lsp in ipairs(servers) do
--   vim.lsp.config(lsp, {
--     on_attach = nvlsp.on_attach,
--     on_init = nvlsp.on_init,
--     capabilities = nvlsp.capabilities,
--   })
--
--   -- Enable the configured LSP
--   vim.lsp.enable(lsp)
-- end
--

