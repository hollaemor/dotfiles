local status_ok, lspconfig = pcall(require, 'lspconfig')

if not status_ok then
  vim.notify('nvim-lspconfig not installed')
  return
end

require('user.lsp.lsp-installer')
require('user.lsp.lspsaga')
require('user.lsp.handlers').setup()
require 'user.lsp.null-ls'


-- configure go LSP since gopls is installed on system
--[[ lspconfig.gopls.setup{} ]]
