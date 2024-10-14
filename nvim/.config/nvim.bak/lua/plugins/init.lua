return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
      vim.diagnostic.config {
        virtual_text = false,
      }
    end,
  },
  --
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "pyright",
        "ruff-lsp",
        "debugpy",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "comment",
        "css",
        "dockerfile",
        "gitignore",
        "graphql",
        "html",
        "json",
        "lua",
        "markdown",
        "proto",
        "python",
        "rust",
        "sql",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
        "zig",
        "toml",
        "rst",
        "markdown_inline",
        "xml",
        "terraform",
        "javascript",
        "java",
        "koto",
        "helm",
        "diff",
        "cpp",
        "go",
        "gomod",
      },
    },
  },
}
