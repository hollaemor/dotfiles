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
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"html-lsp",
				"prettier",
				"stylua",
				"gopls",
				"ruff",
				"mypy",
				"debugpy",
				"typescript-language-server",
				"yaml-language-server",
				"buf-languaage-server",
				"dockerfile-language-server",
				"graphql",
				"helm-ls",
				"jsonls",
				"sqls",
				"tsserver",
				"graphql-language-service-cli",
			},
		},
	},
	{
		"mfussenegger/nvim-dap",
		config = function(_, opts)
			require("core.utils").load_mappings("dap")
		end,
	},
	{
		-- LSP fidget

		"j-hui/fidget.nvim",
		tag = "legacy",
		event = "LspAttach",
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


	-- utils -------------------------------
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
	{
		"utilyre/barbecue.nvim",
		lazy = false,
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons",
		},
	},
}

return plugins
