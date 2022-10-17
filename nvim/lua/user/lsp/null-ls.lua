local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
    formatting.black.with({ extra_args = { "--fast", "-S" } }),
    formatting.isort,
    formatting.stylua,
    formatting.sql_formatter.with({ extra_args = { "-l", "postgresql" } }),
    formatting.gofmt,
    formatting.goimports,
    formatting.google_java_format,
    formatting.rustfmt,
    formatting.taplo,
    formatting.terraform_fmt,

    -- diagnostics
    diagnostics.flake8.with({ extra_args = { "--ignore", "E501,W291,E126" } }),
    diagnostics.sqlfluff,
  },

  -- setup autoformatting on save
  on_attach = function(client)
    if client.server_capabilities.document_formatting then
      vim.cmd([[
            " augroup LspFormatting
            "     autocmd! * <buffer>
            "     autocmd BufWritePre <buffer> lua vim.lsp.buf.format{async=true}
            " augroup END
            ]])
    end
  end,

})
