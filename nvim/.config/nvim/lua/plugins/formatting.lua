local conform_options = {
  formatters_by_ft = {
    lua = { "stylua" },
    sql = { "sql_formatter" },
    python = { "ruff_format" },
    javascript = { { "prettierd", "prettier" } },
    json = { { "jq", "prettier" } },
    -- css = { "prettier" },
    -- html = { "prettier" },
    xml = { "xmllint" },
  },
  formatters = {
    black = {
      prepend_args = { "-l", "120", "-S" },
    },
    ruff_format = {
      append_args = { "--config", "~/.ruff.toml" },
      command = "ruff",
      args = {
        "format",
        "--force-exclude",
        "--stdin-filename",
        "$FILENAME",
        "-",
      },
    },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}
return {
  {

    "stevearc/conform.nvim",
    config = function()
      require("conform").setup(conform_options)
    end,
  },
}
