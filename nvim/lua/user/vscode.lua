
local opts = {noremap = true, silent = true}
local term_opts = { silent = true}

local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap("", "<space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
-- normal mode = "n"
-- insert mode = "i"
-- visual mode = "v"
-- visual block mode = "x"
-- term mode = "t"
-- command mode = "c"



-- Trouble
keymap("n", "gd", ":call VSCodeCall('editor.action.peekDefinition')<cr>", opts)
keymap("n", "gD", ":call VSCodeCall('editor.action.revealDefinition')<cr>", opts)
keymap("n", "gr", ":call VSCodeCall('editor.action.referenceSearch.trigger')<cr>", opts)
keymap("n", "gR", ":call VSCodeCall('references-view.findReferences')<cr>", opts)
keymap("n", "gy", ":call VSCodeCall('editor.action.goToTypeDefinition')<cr>", opts)
keymap("n", "<leader>rn", ":call VSCodeCall('editor.action.rename')", opts)

