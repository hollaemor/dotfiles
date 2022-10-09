require("user.options")
require("user.keymaps")
require("user.plugins")
require("user.colorscheme")
require("user.treesitter")
require("user.nvim-tree")
require("user.lualine")
require("user.bufferline")

require("user.telescope")

-- LSP
require("user.lsp")

require("user.git_signs")
require("user.autopairs")
require("user.cmp")
require("user.comment")

--progamming languages
require("user.go")
require("user.rust-tools")

require("user.notify")
require("user.toggleterm")

require("user.which_key")
require("user.diffview")

require("user.indentline")
require("user.tests")

require("user.dap")
require("user.jabs")
require("user.python")
require("user.project")
--[[ require("user.winbar") ]]

--[[ vim.opt.winbar = "%{%v:lua.require'user.winbar'.get_winbar()%}" ]]
