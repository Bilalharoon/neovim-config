require("nvchad.configs.lspconfig").defaults()

-- local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "lua_ls", "pyright", "gopls", "clangd"} -- Add your LSP here


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

