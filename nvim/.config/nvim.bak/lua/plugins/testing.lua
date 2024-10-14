return {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },

  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },

  {
    "nvim-neotest/neotest",
    -- keys = {
    -- 	{ "<leader>tn", mode = "n", desc = "Run current test" },
    -- 	{ "<leader>tf", mode = "n", desc = "Test file" },
    -- 	{ "<leader>ts", mode = "n", desc = "Toggle test summary" },
    -- 	{ "<leader>td", mode = "n", desc = "Debug test" },
    -- },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "theHamsta/nvim-dap-virtual-text",

      -- test runners
      "nvim-neotest/neotest-python",
      "nvim-neotest/neotest-go",
      "nvim-neotest/neotest-jest",
      "rouge8/neotest-rust",
      "andy-bell101/neotest-java",
      "nvim-neotest/neotest-vim-test",
    },
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-python" {
            dap = { justMyCode = false },
            runner = function()
              -- vim.env.PYTHONPATH = "."
              return "pytest"
            end,
            args = function()
              return { "-q", "--color=yes" }
            end,
          },
          require "neotest-go" {
            experimental = {
              test_table = true,
            },
          },
          require "neotest-jest" {},
          require "neotest-rust" {},
          require "neotest-java" {
            fallback_runner = "maven",
          },
          require "neotest-vim-test" {
            ignore_file_types = { "python", "go", "javascript", "rust", "java" },
          },
        },
      }
    end,
    -- init = function()
    --   require("core.utils").load_mappings "neotest"
    -- end,
  },
}
