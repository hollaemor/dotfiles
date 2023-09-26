local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities
local navic = require "nvim-navic"


local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "gopls", "pyright", "taplo", "tsserver", "yamlls", "dockerls", "graphql" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = function(client, bufnr)
      on_attach(client, bufnr)

      if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
      end
    end,
    capabilities = capabilities,
  }
end
