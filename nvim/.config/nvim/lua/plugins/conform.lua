return {
  {
    "stevearc/conform.nvim",
    opts = {
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
    },
  },
}
