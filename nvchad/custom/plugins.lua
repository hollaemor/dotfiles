local plugins = {

	----- programming ------------------------------------
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},
	{
		"mfussenegger/nvim-dap",
		config = function(_, opts)
			require("core.utils").load_mappings("dap")
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
			require("core.utils").load_mappings("dap_python")
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
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
		"simrat39/rust-tools.nvim",
		ft = "rust",
		dependencies = "neovim/nvim-lspconfig",
		config = function()
			local rt = require("rust-tools")
			local navic = require("nvim-navic")
			require("core.utils").load_mappings("lspconfig")

			rt.setup({
				server = {
					on_attach = function(client, bufnr)
						navic.attach(client, bufnr)
						vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
						vim.keymap.set("n", "<leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
					end,
				},
			})
		end,
	},
	{
		"saecki/crates.nvim",
		ft = { "rust", "toml" },

		config = function(_, opts)
			local crates = require("crates")
			crates.setup(opts)
			crates.show()
		end,
	},
	{
		"neovim/nvim-lspconfig",

		dependencies = {
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("custom.configs.null-ls")
			end,
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},
	-- testing frameworks
	{
		"nvim-neotest/neotest",
		keys = {
			{ "<leader>tn", mode = "n", desc = "Run current test" },
			{ "<leader>tf", mode = "n", desc = "Test file" },
			{ "<leader>ts", mode = "n", desc = "Toggle test summary" },
			{ "<leader>td", mode = "n", desc = "Debug test" },
		},
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
			require("neotest").setup({
				adapters = {
					require("neotest-python")({
						dap = { justMyCode = false },
						runner = function()
							vim.env.PYTHONPATH = "."
							return "pytest"
						end,
						args = function()
							return { "-q", "--color=yes" }
						end,
					}),
					require("neotest-go")({
						experimental = {
							test_table = true,
						},
					}),
					require("neotest-jest")({}),
					require("neotest-rust")({}),
					require("neotest-java")({
						fallback_runner = "maven",
					}),
					require("neotest-vim-test")({
						ignore_file_types = { "python", "go", "javascript", "rust", "java" },
					}),
				},
			})
		end,
		init = function()
			require("core.utils").load_mappings("neotest")
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = "JoosepAlviste/nvim-ts-context-commentstring",
		opts = {
			ensure_installed = {
				"vim",
				"lua",
				"rust",
				"python",
				"go",
				"html",
				"css",
				"javascript",
				"typescript",
				"vue",
				"query",
				"sql",
				"bash",
				"csv",
				"gitignore",
				"gomod",
				"graphql",
				"json",
				"kotlin",
				"markdown_inline",
				"norg",
				"promql",
				"terraform",
				"rst",
				"toml",
				"xml",
				"yaml",
				"zig",
        "proto"
			},
		},
	},

	{
		"folke/which-key.nvim",
		keys = { "<leader>", "<c-r>", "c", "v", "g" },
	},

	{
		"ThePrimeagen/refactoring.nvim",
		ft = { "python", "go", "java", "typescript" },
		config = function()
			require("telescope").load_extension("refactoring")
			require("core.utils").load_mappings("refactoring")
		end,
	},
}

return plugins
